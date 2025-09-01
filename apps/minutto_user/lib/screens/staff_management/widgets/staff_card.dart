import 'package:shared/shared.dart';

class StaffCard extends StatelessWidget {
  const StaffCard({super.key});

  @override
  Widget build(BuildContext context) {
    final style = TextStyle(
      color: context.colorPalette.blue475,
      fontSize: 12,
    );
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: context.colorPalette.greyF9F,
        border: Border.all(color: context.colorPalette.greyEAE),
        borderRadius: BorderRadius.circular(kRadiusSecondary),
      ),
      child: Row(
        spacing: 10,
        children: [
          BaseNetworkImage(
            "",
            width: 50,
            height: 50,
            shape: BoxShape.circle,
          ),
          Expanded(
            flex: 3,
            child: Column(
              spacing: 4,
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
                  "مصمم جرافيك",
                  overflow: TextOverflow.ellipsis,
                  style: style,
                ),
                Text(
                  "قسم التصميم والجرافيك",
                  overflow: TextOverflow.ellipsis,
                  style: style,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              spacing: 4,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.appLocalization.branch,
                  style: style,
                ),
                Text(
                  "عمان",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: context.colorPalette.green19B,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
