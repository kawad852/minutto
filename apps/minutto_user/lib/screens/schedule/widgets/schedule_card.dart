import 'package:shared/shared.dart';

class ScheduleCard extends StatelessWidget {
  final bool isVacation;
  final String title, time, branch;
  const ScheduleCard({
    super.key,
    this.isVacation = false,
    required this.title,
    required this.time,
    required this.branch,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 101,
      decoration: BoxDecoration(
        color: context.colorPalette.greyF9F,
        borderRadius: BorderRadius.circular(kRadiusSecondary),
      ),
      child: Row(
        spacing: 20,
        children: [
          Container(
            width: 10,
            height: 101,
            decoration: BoxDecoration(
              color: isVacation
                  ? context.colorPalette.blue091
                  : context.colorPalette.green19B,
              borderRadius: BorderRadiusDirectional.only(
                topStart: Radius.circular(kRadiusSecondary),
                bottomStart: Radius.circular(kRadiusSecondary),
              ),
            ),
          ),
          Expanded(
            child: Column(
              spacing: 6,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: context.colorPalette.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    CustomMenu(),
                  ],
                ),
                Row(
                  spacing: 4,
                  children: [
                    CustomSvg(
                      isVacation ? MyIcons.smallCalendar : MyIcons.smallClock,
                    ),
                    Text(
                      time,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: context.colorPalette.black,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Row(
                  spacing: 4,
                  children: [
                    CustomSvg(MyIcons.house),
                    Text(
                      branch,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: context.colorPalette.black,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 2),
        ],
      ),
    );
  }
}
