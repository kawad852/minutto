import '../../shared.dart';

class PriceWidget extends StatelessWidget {
  final bool large;
  final int quantity;
  final (double originalPrice, double? offerPrice) price;
  final Axis axis;

  const PriceWidget({
    super.key,
    this.large = false,
    required this.quantity,
    required this.price,
    this.axis = Axis.vertical,
  });

  double get originalPrice => price.$1;
  double? get offerPrice => price.$2;
  bool get _withOffer => offerPrice != null;

  @override
  Widget build(BuildContext context) {
    final price = (offerPrice ?? originalPrice) * quantity;
    return Flex(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      direction: axis,
      children: [
        if (_withOffer)
          Text(
            '${(originalPrice * quantity).toStringAsFixed(2)} ${context.currency}',
            style:
                (large
                        ? context.textTheme.labelMedium
                        : context.textTheme.labelSmall)!
                    .copyWith(decoration: TextDecoration.lineThrough),
          ),
        const SizedBox(width: 6),
        Text(
          '${price.toStringAsFixed(2)} ${context.currency}',
          style:
              (large
                      ? context.textTheme.bodyLarge!.copyWith()
                      : context.textTheme.labelLarge)!
                  .copyWith(
                    color: _withOffer ? context.colorScheme.primary : null,
                    fontWeight: _withOffer ? FontWeight.bold : null,
                  ),
        ),
      ],
    );
  }
}
