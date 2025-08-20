import 'package:shared/shared.dart';

class OrderPaymentSummery extends StatelessWidget {
  final double basketTotal, deliveryFee, orderTotal, rewardsDiscount, promoCodeDiscount;
  final String orderType;

  const OrderPaymentSummery({
    super.key,
    required this.basketTotal,
    required this.deliveryFee,
    required this.rewardsDiscount,
    required this.promoCodeDiscount,
    required this.orderTotal,
    required this.orderType,
  });

  @override
  Widget build(BuildContext context) {
    final trailingTextStyle = context.textTheme.labelLarge!;
    return Theme(
      data: Theme.of(context).copyWith(
        listTileTheme: ListTileThemeData(
          minTileHeight: 30,
          minVerticalPadding: 0,
          leadingAndTrailingTextStyle: trailingTextStyle,
          contentPadding: EdgeInsets.zero,
        ),
      ),
      child: ClipPath(
        key: ValueKey(kNowDate),
        clipper: ReceiptClipper(),

        child: Container(
          color: Color(0xFFEEE8D5).withValues(alpha: 0.30),
          padding: EdgeInsets.only(top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              HeaderTile(
                titleText: context.appLocalization.paymentSummary,
                contentPadding: EdgeInsetsDirectional.only(start: 10),
              ),
              Divider(indent: 10, endIndent: 10),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                child: Column(
                  children: [
                    ListTile(
                      title: Text(context.appLocalization.basketTotal),
                      trailing: Text("${basketTotal.toStringAsFixed(2)} ${context.currency}"),
                    ),
                    if (orderType == OrderType.delivery.value)
                      ListTile(
                        title: Text(context.appLocalization.deliveryFee),
                        trailing: Text("${deliveryFee.toStringAsFixed(2)} ${context.currency}"),
                      ),
                    if (promoCodeDiscount > 0)
                      ListTile(
                        title: Text(context.appLocalization.promoCodeDiscount),
                        trailing: Text(
                          "${promoCodeDiscount.toStringAsFixed(2)} ${context.currency}",
                        ),
                      ),
                    if (rewardsDiscount > 0)
                      ListTile(
                        title: Text(context.appLocalization.rewardsDiscount),
                        trailing: Text("${rewardsDiscount.toStringAsFixed(2)} ${context.currency}"),
                      ),
                    ListTile(
                      titleTextStyle: context.textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                      title: Text(context.appLocalization.orderTotal),
                      trailing: Text(
                        "${orderTotal.toStringAsFixed(2)} ${context.currency}",
                        style: trailingTextStyle.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
