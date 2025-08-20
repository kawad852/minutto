import 'package:shared/shared.dart';

class OrderTypeChip extends StatelessWidget {
  final String type;
  const OrderTypeChip({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    final isDelivery = type == OrderType.delivery.value;
    return Chip(
      padding: EdgeInsets.zero,
      side: BorderSide.none,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      labelStyle: TextStyle(
        color: isDelivery ? context.colorScheme.surfaceContainerHighest : null,
      ),
      color: WidgetStateProperty.all(
        isDelivery
            ? context.colorScheme.surfaceTint
            : context.colorScheme.tertiaryContainer,
      ),
      label: Text(
        isDelivery
            ? context.appLocalization.delivery
            : context.appLocalization.pickUp,
      ),
    );
  }
}
