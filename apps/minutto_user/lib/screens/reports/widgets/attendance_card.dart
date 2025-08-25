import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class AttendanceCard extends StatelessWidget {
  const AttendanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.navigate((context) => const AttendanceInputScreen());
      },
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
              height: 85,
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
                    "الثلاثاء ، 04 إبريل",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: context.colorPalette.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "${context.appLocalization.attendanceTime} : 09:18 AM",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: context.colorPalette.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "${context.appLocalization.checkoutTime} : 09:18 AM",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: context.colorPalette.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
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
