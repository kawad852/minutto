import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class EmployeeAttendanceCard extends StatelessWidget {
  const EmployeeAttendanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    final style = TextStyle(
      color: context.colorPalette.blue475,
      fontSize: 14,
    );
    return GestureDetector(
      onTap: () {
        context.navigate((context) => EmployeeAttendanceScreen());
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        decoration: BoxDecoration(
          color: context.colorPalette.greyF9F,
          border: Border.all(color: context.colorPalette.greyEAE),
          borderRadius: BorderRadius.circular(kRadiusSecondary),
        ),
        child: Column(
          spacing: 12,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              spacing: 10,
              children: [
                BaseNetworkImage(
                  "",
                  width: 50,
                  height: 50,
                  shape: BoxShape.circle,
                ),
                Expanded(
                  child: Column(
                    spacing: 5,
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
                        style: TextStyle(
                          color: context.colorPalette.blue475,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    spacing: 4,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        context.appLocalization.date,
                        style: TextStyle(
                          color: context.colorPalette.blue475,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "15 أغسطس",
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
                      const CustomSvg(MyIcons.enter),
                      Text(
                        "09:00 AM",
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
                      const CustomSvg(MyIcons.out),
                      Text(
                        "09:00 AM",
                        style: style,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    context.appLocalization.rest,
                    style: TextStyle(
                      color: context.colorPalette.blue475,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    spacing: 4,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomSvg(MyIcons.enter),
                      Text(
                        "09:00 AM",
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
                      const CustomSvg(MyIcons.out),
                      Text(
                        "09:00 AM",
                        style: style,
                      ),
                    ],
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
