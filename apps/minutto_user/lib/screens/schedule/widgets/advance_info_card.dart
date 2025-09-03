import 'package:shared/shared.dart';

class AdvanceInfoCard extends StatelessWidget {
  const AdvanceInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        color: context.colorPalette.greyF9F,
        border: Border.all(color: context.colorPalette.greyEAE),
        borderRadius: BorderRadius.circular(kRadiusSecondary),
      ),
      child: Row(
        spacing: 8,
        children: [
          BaseNetworkImage(
            "",
            width: 50,
            height: 50,
            shape: BoxShape.circle,
          ),
          Expanded(
            child: Column(
              spacing: 2,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "صهيب البكار",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: context.colorPalette.black,
                    fontSize: 18,
                  ),
                ),
                Text(
                  "مصمم جرافيك, فرع عمان",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: context.colorPalette.grey8C8,
                    fontSize: 12,
                  ),
                ),
                Text(
                  "${context.appLocalization.orderDate}: 8 أغسطس",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: context.colorPalette.blue475,
                    fontSize: 12,
                  ),
                ),
                Text(
                  "${context.appLocalization.acceptanceDate}: 8 أغسطس",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: context.colorPalette.blue475,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Text(
            "500JOD",
            style: TextStyle(
              color: context.colorPalette.green19B,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
