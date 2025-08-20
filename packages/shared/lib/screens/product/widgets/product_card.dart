import 'package:shared/shared.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;
  final String storeId;
  final VoidCallback onCLick;
  final bool fromFavorites;

  const ProductCard({
    super.key,
    required this.product,
    required this.storeId,
    required this.onCLick,
    this.fromFavorites = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onCLick();
        context.navigate((context) {
          return ProductScreen(product: product);
        });
      },
      child: Card.filled(
        color: context.colorScheme.surfaceContainerLow,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: BaseNetworkImage(
                  product.thumbnailURL,
                  height: 150,
                  alignment: AlignmentDirectional.topEnd,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FavoriteButton(
                        id: product.id,
                        type: FavoriteType.product.value,
                        backgroundColor: context.colorScheme.surfaceContainer,
                        fromFavorites: fromFavorites,
                      ),
                      Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: ItemChipsFlex(
                            trending: product.trending,
                            bestSelling: product.bestSeller,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            product.name,
                            style: context.textTheme.titleMedium!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(width: 5),
                      ],
                    ),
                    Text(product.description, maxLines: 1, overflow: TextOverflow.ellipsis),
                    if (product.rating != null) RatingInfoWidget(rating: product.rating),
                  ],
                ),
              ),
              PriceWidget(price: product.price, quantity: 1, axis: Axis.horizontal),
            ],
          ),
        ),
      ),
    );
  }
}
