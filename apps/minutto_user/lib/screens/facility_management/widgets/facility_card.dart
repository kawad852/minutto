import 'package:shared/shared.dart';

class FacilityCard extends StatelessWidget {
  final String title, value, rank, icon;
  final Color? textColor;
  final Color backgroundColor;
  const FacilityCard({
    super.key,
    required this.title,
    required this.value,
    required this.rank,
    required this.icon,
    required this.backgroundColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        height: 106,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                      color: textColor ?? context.colorPalette.blue091,
                      fontSize: 16,
                    ),
                  ),
                ),
                CustomSvg(icon),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  height: 24,
                  decoration: BoxDecoration(
                    color: context.colorPalette.white20,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "$rank%",
                        style: TextStyle(
                          color: textColor ?? context.colorPalette.blue091,
                          fontSize: 12,
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_up,
                        size: 15,
                        color: textColor ?? context.colorPalette.blue091,
                      ),
                    ],
                  ),
                ),
                Text(
                  value,
                  style: TextStyle(
                    color: textColor ?? context.colorPalette.blue091,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
