import 'package:shared/shared.dart';

class AttendanceInfo extends StatelessWidget {
  const AttendanceInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 115,
      margin: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: context.colorPalette.greyF7F,
        borderRadius: BorderRadius.circular(kRadiusSecondary),
      ),
      child: Row(
        children: [
          Container(
            width: 8,
            height: 115,
            margin: const EdgeInsetsDirectional.only(end: 12),
            decoration: BoxDecoration(
              color: context.colorPalette.redDF0,
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
              spacing: 3,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "الثلاثاء ، 04 إبريل",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: context.colorPalette.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        "متأخر",
                        style: TextStyle(
                          color: context.colorPalette.redDF0,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
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
                Text(
                  "${context.appLocalization.discountValue} : 1 د.أ",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: context.colorPalette.redDF0,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
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
