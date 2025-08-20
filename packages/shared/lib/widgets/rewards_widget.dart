import '../../shared.dart';

class RewardsWidget extends StatelessWidget {
  final double price;

  const RewardsWidget({super.key, required this.price});

  static showRewardsSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            vertical: kScreenMargin,
            horizontal: 10,
          ).copyWith(top: 10),
          child: ListTile(
            shape: Border(),
            title: Text(context.appLocalization.rewards),
            subtitle: Text(context.appLocalization.rewardsInfoText),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FaIcon(FontAwesomeIcons.lightMedal),
        Text.rich(
          style: context.textTheme.titleMedium!.copyWith(
            color: context.colorScheme.primary,
            fontWeight: FontWeight.bold,
          ),
          TextSpan(
            children: [
              TextSpan(text: " ${RewardsService.calculatePointsForProduct(price)} "),
              TextSpan(text: context.appLocalization.points),
            ],
          ),
        ),
        const SizedBox(width: 4),
        RawMaterialButton(
          onPressed: () {
            RewardsWidget.showRewardsSheet(context);
          },
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shape: CircleBorder(),
          padding: EdgeInsets.zero,
          constraints: BoxConstraints(maxWidth: 20),
          child: Icon(Icons.info, size: 16, color: context.colorScheme.secondary),
        ),
      ],
    );
  }
}
