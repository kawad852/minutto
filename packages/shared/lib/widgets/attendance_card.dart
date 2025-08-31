import 'package:shared/shared.dart';

class AttendanceCard extends StatelessWidget {
  final void Function() onTap;
  const AttendanceCard({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final style = TextStyle(
      color: context.colorPalette.blue091,
      fontSize: 15,
    );

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 85,
        decoration: BoxDecoration(
          color: context.colorPalette.greyF7F,
          borderRadius: BorderRadius.circular(kRadiusSecondary),
        ),
        child: Row(
          children: [
            Container(
              width: 8,
              height: 90,
              margin: const EdgeInsetsDirectional.only(end: 12),
              decoration: BoxDecoration(
                color: context.colorPalette.yellowF69,
                borderRadius: BorderRadiusDirectional.only(
                  topStart: Radius.circular(kRadiusSecondary),
                  bottomStart: Radius.circular(kRadiusSecondary),
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${context.appLocalization.attendanceTime} : 09:18 AM",
                    overflow: TextOverflow.ellipsis,
                    style: style,
                  ),
                  Text(
                    "${context.appLocalization.checkoutTime} : 09:18 AM",
                    overflow: TextOverflow.ellipsis,
                    style: style,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "الثلاثاء ، 04 إبريل",
                    overflow: TextOverflow.ellipsis,
                    style: style,
                  ),
                ],
              ),
            ),
            Text(
              "متأخر",
              style: TextStyle(
                color: context.colorPalette.yellowF69,
                fontSize: 16,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
