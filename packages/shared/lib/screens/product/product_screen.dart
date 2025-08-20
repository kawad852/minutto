import 'package:shared/shared.dart';
import 'package:shared/typesense.dart';

class ProductScreen extends StatefulWidget {
  final ProductModel? product;
  final String? id;
  final bool forUsers;

  const ProductScreen({super.key, required this.product, this.id, this.forUsers = true});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  late BasketModel _basket;
  late Future<ProductModel> _productFuture;
  final _sizesKey = GlobalKey();

  UserProvider get _userProvider => context.userProvider;

  void _initialize(BuildContext context) {
    if (widget.product != null) {
      _productFuture = Future.value(ProductModel.fromJson(widget.product!.toJson()));
    } else {
      _productFuture = kFirebaseInstant.products.doc(widget.id).get().then((value) {
        if (value.data() == null && context.mounted) {
          Fluttertoast.showToast(msg: context.appLocalization.itemNotAvailableMsg);
          Navigator.pop(context);
        }
        return value.data()!;
      });
    }
  }

  void _addToBasket(BuildContext context, ProductModel product, List<BasketModel> basket) async {
    if (product.colors.isNotEmpty && product.sizes.isNotEmpty && product.selectedSizeId == null) {
      Fluttertoast.showToast(msg: "Select Size");
      await _sizesKey.currentContext!.scroll();
      return;
    }
    final hasNonSelectedItems = await _checkForRequiredItems(product.items);
    if (!hasNonSelectedItems && context.mounted) {
      await ApiService.fetch(
        context,
        callBack: () async {
          final duplicateMeal = _duplicateMeal(basket, product);
          if (duplicateMeal.product?.id != null) {
            await _userProvider.userBasketCollectionRef.doc(duplicateMeal.id).update({
              MyFields.productBasketQuantity: FieldValue.increment(product.basketQuantity),
            });
          } else {
            _basket.id = kUUID;
            _basket.createdAt = DateTime.now();
            _basket.product = product;
            _basket.storeId = product.storeId;
            await _userProvider.userBasketCollectionRef.doc(_basket.id).set(_basket);
          }
          if (context.mounted) {
            Fluttertoast.showToast(msg: context.appLocalization.mealAdded);
            Navigator.pop(context);
          }
        },
      );
    }
  }

  bool _canAddToBasket(ProductModel newItem, List<BasketModel> basket) {
    if (basket.isEmpty) return true;

    final firstItem = basket.first;

    // Check if the new item and existing items are from different types (meal vs product)
    final isMeal = newItem.storeId != null;
    final basketIsMeal = firstItem.storeId != null;

    if (isMeal != basketIsMeal) {
      // Trying to mix meal with product
      return false;
    }

    if (isMeal && newItem.storeId != firstItem.storeId) {
      // Trying to add meal from another restaurant
      return false;
    }

    return true;
  }

  Future<bool> _checkForRequiredItems(List<MealOptionModel> mealOptions) async {
    bool hasNonFilledItem = false;
    for (var element in mealOptions.where(
      (element) => element.type == MealOptionEnum.required.value,
    )) {
      if (element.selectedId == null) {
        final key = element.globalKey as GlobalKey;
        await key.currentContext!.scroll();
        hasNonFilledItem = true;
        break;
      }
    }
    return hasNonFilledItem;
  }

  BasketModel _duplicateMeal(List<BasketModel> basket, ProductModel meal) {
    return basket.singleWhere((element) {
      final basketProduct = element.product;
      final sameId = basketProduct?.id == meal.id;
      final sameNote = basketProduct?.note == meal.note;
      final sameMealOptions = ObjectsComparer.listEquals(
        basketProduct?.items.map((e) => e.toJson()).toList(),
        meal.items.map((e) => e.toJson()).toList(),
      );
      return sameId && sameNote && sameMealOptions;
    }, orElse: () => BasketModel());
  }

  void _share(ProductModel job) {
    DeepLinkingService.share(
      context,
      id: job.id,
      type: "product",
      title: job.name,
      description: job.description,
      // extra: {
      //   'userId': job.userId,
      // },
      imageURL: '',
    );
  }

  @override
  void initState() {
    super.initState();
    _basket = BasketModel().copyWith();
    _initialize(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlitzBuilder.future(
      future: _productFuture,
      onComplete: (context, snapshot) {
        final product = snapshot.data ?? ProductModel.mock();
        final images = product.getImages.isEmpty ? [product.thumbnail] : product.getImages;
        final isOutOfStock = product.isOutOfStock;
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              final embString = product.embedding.join(',');
              final vectorQuery = 'embedding:([$embString], k:12)';
              TypeSenseService.multiSearch([
                SearchRequestModel(
                  q: "*",
                  collection: MyCollections.products,
                  vectorQuery: vectorQuery,
                  queryBy: "nameEn",
                  filters: [FilterByModel(value: "id:!=product_82")],
                ),
              ]);
            },
          ),
          bottomNavigationBar: BottomAppBar(
            color: isOutOfStock ? context.colorScheme.tertiaryContainer : null,
            child: isOutOfStock
                ? OutOfStockTile()
                : Row(
                    children: [
                      QuantityCounter(
                        quantity: product.basketQuantity,
                        large: true,
                        onAdd: () {
                          if (product.basketQuantity == product.stockCount) {
                            context.showSnackBar(
                              context.appLocalization.stockAvailabilitySubTitle(product.stockCount),
                              floating: false,
                            );
                          } else {
                            setState(() {
                              product.basketQuantity++;
                            });
                          }
                        },
                        onRemove: product.basketQuantity != 1
                            ? () {
                                setState(() {
                                  product.basketQuantity--;
                                });
                              }
                            : null,
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: ZoomIn(
                          child: BasketSelector(
                            builder: (context, basket) {
                              return FilledButton(
                                onPressed: () {
                                  GuestHelper.openSheet(
                                    context,
                                    action: () {
                                      if (!_canAddToBasket(product, basket)) {
                                        context.showSnackBar(
                                          "",
                                          floating: false,
                                          contentWidget: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                context.appLocalization.startNewBasketTitle,
                                                style: context.textTheme.titleMedium!.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  color:
                                                      context.colorScheme.surfaceContainerHighest,
                                                ),
                                              ),
                                              Text(context.appLocalization.startNewBasketBody),
                                            ],
                                          ),
                                          action: SnackBarAction(
                                            label: context.appLocalization.startNewBasket,
                                            onPressed: () async {
                                              context.ordersProvider.loopOverBasketBasket(
                                                context,
                                                basket,
                                              );
                                              _addToBasket(context, product, basket);
                                            },
                                          ),
                                        );
                                        return;
                                      }
                                      _addToBasket(context, product, basket);
                                    },
                                  );
                                },
                                child: Text(context.appLocalization.addToBasket),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
          ),
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 450,
                pinned: true,
                stretch: true,
                actions: [
                  FavoriteButton(id: product.id, type: FavoriteType.product.value),
                  ShareButton(
                    id: product.id,
                    name: product.name,
                    description: product.description,
                    type: "product",
                  ),
                  const SizedBox(width: 10),
                ],
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  background: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: kToolbarHeight + kScreenMargin,
                        bottom: kScreenMargin,
                      ),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: CarouselSlider.builder(
                          key: ValueKey(product.selectedColorId),
                          itemCount: images.length,
                          options: CarouselOptions(
                            enableInfiniteScroll: images.length > 1,
                            height: double.infinity,
                            viewportFraction: images.length > 1 ? 0.9 : 1,
                          ),
                          itemBuilder: (BuildContext context, int index, int pageViewIndex) {
                            final image = images[index];
                            return BaseNetworkImage(
                              image,
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsetsDirectional.only(
                  start: kScreenMargin,
                  end: kScreenMargin,
                  top: 10,
                  bottom: 0,
                ),
                sliver: SliverToBoxAdapter(
                  child: ItemChipsFlex(
                    trending: product.trending,
                    bestSelling: product.bestSeller,
                    direction: Axis.horizontal,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 8,
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 8,
                          children: [
                            if (product.colors.isNotEmpty)
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  children: product.colors
                                      .map((e) {
                                        return GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              product.selectedColorId = e.id;
                                              product.selectedSizeId = null;
                                            });
                                          },
                                          child: ColorAvatar(
                                            hex: e.hex,
                                            child: product.selectedColorId == e.id
                                                ? Icon(Icons.check)
                                                : null,
                                          ),
                                        );
                                      })
                                      .separator(const SizedBox(width: 5))
                                      .toList(),
                                ),
                              ),
                            if (product.sizes.isNotEmpty)
                              Builder(
                                builder: (context) {
                                  final sizeIds = product.selectedColor.sizeIds;
                                  final sizes = product.sizes
                                      .where((e) => sizeIds.contains(e.id))
                                      .toList();
                                  return Row(
                                    key: _sizesKey,
                                    children: sizes
                                        .map((e) {
                                          return FilterChip(
                                            label: Text(e.size),
                                            selected: product.selectedSizeId == e.id,
                                            onSelected: (value) {
                                              setState(() {
                                                product.selectedSizeId = e.id;
                                              });
                                            },
                                          );
                                        })
                                        .separator(const SizedBox(width: 5))
                                        .toList(),
                                  );
                                },
                              ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(end: kScreenMargin),
                      child: PriceWidget(price: product.price, quantity: 1, large: true),
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: ListTile(
                  contentPadding: EdgeInsetsGeometry.symmetric(horizontal: kScreenMargin),
                  titleAlignment: ListTileTitleAlignment.top,
                  titleTextStyle: context.textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                  title: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(child: Text(product.name)),
                      RatingInfoWidget(
                        rating: product.rating,
                        onPressed: () {
                          context.navigate((context) {
                            return ReviewsScreen(productId: product.id);
                          });
                        },
                      ),
                    ],
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(product.description),
                      const SizedBox(height: 10),
                      GestureDetector(
                        child: RewardsWidget(price: product.price.$2 ?? product.price.$1),
                        onTap: () {
                          RewardsWidget.showRewardsSheet(context);
                        },
                      ),
                    ],
                  ),
                ),
              ),

              ///Meal Options
              SliverToBoxAdapter(
                child: Theme(
                  data: Theme.of(context).copyWith(
                    listTileTheme: ListTileThemeData(
                      leadingAndTrailingTextStyle: context.textTheme.labelLarge,
                      horizontalTitleGap: 0,
                      minVerticalPadding: 0,
                      minTileHeight: 45,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: kScreenMargin),
                    child: Column(
                      children: List.generate(product.items.length, (index) {
                        final mealOption = product.items[index];
                        mealOption.globalKey = GlobalKey(debugLabel: mealOption.id);
                        return Column(
                          children: [
                            ListTile(
                              key: mealOption.globalKey! as GlobalKey,
                              minTileHeight: 16,
                              titleTextStyle: context.textTheme.titleMedium,
                              title: Text(mealOption.name),
                              trailing: mealOption.type == MealOptionEnum.required.value
                                  ? Chip(
                                      label: Text(context.appLocalization.required),
                                      color: WidgetStateProperty.all(
                                        context.colorScheme.secondaryContainer,
                                      ),
                                      side: BorderSide.none,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(100),
                                      ),
                                    )
                                  : null,
                            ),
                            if (mealOption.type == MealOptionEnum.optional.value)
                              ...mealOption.items.map((item) {
                                return CheckboxListTile(
                                  value: mealOption.selectedIds.contains(item.id),
                                  controlAffinity: ListTileControlAffinity.leading,
                                  title: Text(item.name),
                                  secondary: item.price != 0.0
                                      ? Text('${item.price} ${context.currency}')
                                      : null,
                                  onChanged: (value) {
                                    setState(() {
                                      if (mealOption.selectedIds.contains(item.id)) {
                                        mealOption.selectedIds.remove(item.id);
                                      } else {
                                        mealOption.selectedIds.add(item.id);
                                      }
                                    });
                                  },
                                );
                              }),
                            if (mealOption.type == MealOptionEnum.required.value)
                              ...mealOption.items.map((item) {
                                return RadioListTile(
                                  value: item.id,
                                  groupValue: mealOption.selectedId,
                                  title: Text(item.name),
                                  secondary: item.price != 0.0
                                      ? Text('${item.price} ${context.currency}')
                                      : null,
                                  onChanged: (value) {
                                    setState(() {
                                      mealOption.selectedId = value;
                                    });
                                  },
                                );
                              }),
                          ],
                        );
                      }).separator(SizedBox(height: 10)).toList(),
                    ),
                  ),
                ),
              ),

              ///Note
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(kScreenMargin),
                  child: TextEditor(
                    labelText: context.appLocalization.note,
                    initialValue: product.note,
                    required: false,
                    onChanged: (value) => product.note = value,
                    maxLines: 3,
                  ),
                ),
              ),

              SliverToBoxAdapter(child: RecommendBuilder(ids: [product.id])),

              SliverPadding(padding: EdgeInsets.only(bottom: kScreenMargin)),
            ],
          ),
        );
      },
    );
  }
}
