import 'package:shared/exports/algolia_exports.dart';
import 'package:shared/shared.dart';

class BasketCard extends StatefulWidget {
  final BasketModel basket;
  final bool enableEdit;

  const BasketCard({super.key, this.enableEdit = true, required this.basket});

  @override
  State<BasketCard> createState() => BasketCardState();
}

class BasketCardState extends State<BasketCard> {
  late Stream<ProductModel?> _productStream;
  bool outOfStock = false;
  bool stockLessThanQuantity = false;

  UserProvider get _userProvider => context.userProvider;
  BasketModel get _basket => widget.basket;
  ProductModel get _basketProduct => widget.basket.product!;
  String get _basketId => _basket.id;
  DocumentReference<BasketModel> get _basketProductREF =>
      _userProvider.userBasketCollectionRef.doc(_basketId);
  bool get hasIssue => outOfStock || stockLessThanQuantity;

  FirestoreService get _firestoreService => getIt<FirestoreService>();
  FirebaseFirestore get _firestore => getIt<FirebaseFirestore>();

  void _initialize() {
    late DocumentReference<ProductModel> query;
    if (_basketProduct.storeId != null) {
      query = _firestore.menu(_basketProduct.storeId!).doc(_basketProduct.id);
    } else {
      query = _firestore.products.doc(_basketProduct.id);
    }
    _productStream = query.snapshots().map((e) => e.data());
  }

  void _toggleQuantity(int value) {
    _basketProductREF.update({MyFields.productBasketQuantity: FieldValue.increment(value)});
  }

  void _onRemove(BuildContext context) {
    context
        .showDialog(
          titleText: context.appLocalization.itemDeleteTitle,
          bodyText: context.appLocalization.itemBasketDeleteBody,
          warning: true,
        )
        .then((value) {
          if (value != null) {
            _userProvider.userBasketCollectionRef.doc(_basketId).delete();
          }
        });
  }

  @override
  void initState() {
    super.initState();
    _initialize();
  }

  @override
  Widget build(BuildContext context) {
    return BlitzBuilder.stream(
      stream: _productStream,
      initialData: _basket.product,
      onComplete: (context, snapshot) {
        final product = snapshot.data!;
        product.basketQuantity = _basketProduct.basketQuantity;
        product.note = _basketProduct.note;
        product.items = _basketProduct.items;
        product.selectedColorId = _basketProduct.selectedColorId;
        product.selectedSizeId = _basketProduct.selectedSizeId;
        final stockQuantity = product.stockCount;
        outOfStock = product.isOutOfStock;
        stockLessThanQuantity = product.stockLessThanQuantity;
        // print("stockLessThanQuantity:: ${stockLessThanQuantity}");
        // if (stockLessThanQuantity) {
        //   // Map<String, dynamic> json = {
        //   //   "": product.basketQuantity,
        //   // };
        //   _basketProductREF.update({
        //     "": product.basketQuantity,
        //   });
        // }
        // if(meal.id.isEmpty) {
        //   return SizedBox.shrink();
        // }
        return Slidable(
          key: ValueKey(_basket.id),
          endActionPane: ActionPane(
            motion: const ScrollMotion(),
            extentRatio: 0.20,
            dragDismissible: false,
            children: [
              SlidableAction(
                onPressed: _onRemove,
                backgroundColor: context.colorScheme.errorContainer,
                foregroundColor: context.colorScheme.onErrorContainer,
                icon: Icons.delete,
                label: context.appLocalization.delete,
                spacing: 10,
                padding: EdgeInsets.symmetric(horizontal: 10),
                borderRadius: BorderRadius.circular(10),
                autoClose: false,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BaseNetworkImage(
                    product.thumbnailURL,
                    height: 100,
                    width: 100,
                    margin: const EdgeInsetsDirectional.only(end: 10),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          spacing: 10,
                          children: [
                            Expanded(
                              child: Text(
                                product.name,
                                style: context.textTheme.titleMedium!.copyWith(
                                  fontWeight: FontWeight.w500,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            if (widget.enableEdit && !outOfStock)
                              QuantityCounter(
                                quantity: product.basketQuantity,
                                large: false,
                                onAdd: () {
                                  _toggleQuantity(1);
                                },
                                onRemove: product.basketQuantity != 1
                                    ? () {
                                        _toggleQuantity(-1);
                                      }
                                    : null,
                              ),
                          ],
                        ),
                        Row(
                          spacing: 10,
                          children: [
                            if (product.selectedColorId != null)
                              ColorAvatar(hex: product.selectedColor.hex, radius: 10),
                            if (product.selectedSizeId != null)
                              Chip(label: Text(product.selectedSize.size)),
                          ],
                        ),

                        /// Meal Options
                        Text.rich(
                          TextSpan(
                            children: [
                              ...product.items
                                  .where((element) => element.type == MealOptionEnum.required.value)
                                  .map((element) {
                                    return TextSpan(
                                      text: element.items
                                          .where((item) => item.id == element.selectedId)
                                          .map((e) => e.name)
                                          .join(', '),
                                    );
                                  }),
                              ...product.items
                                  .where((element) => element.type == MealOptionEnum.optional.value)
                                  .map((element) {
                                    return TextSpan(
                                      text: element.items
                                          .where((item) => element.selectedIds.contains(item.id))
                                          .map((e) => "+${e.name}")
                                          .join(', '),
                                    );
                                  }),
                            ],
                          ),
                        ),

                        if (product.note != null) Text('• ${product.note}'),

                        PriceWidget(
                          price: product.price,
                          quantity: product.basketQuantity,
                          axis: Axis.horizontal,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // ListBody(
              //   children: [
              //     if (outOfStock)
              //       OutOfStockTile(
              //         trailing: BasketDeleteButton(onPressed: () => _onRemove(context)),
              //       )
              //     else if (stockLessThanQuantity)
              //       StockQuantityTile(stockQuantity: stockQuantity),
              //   ],
              // ),
            ],
          ),
        );
      },
      // onError: (error) => const SizedBox.shrink(),
    );
  }
}
