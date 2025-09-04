import 'package:minutto_user/screens/shift/shift_input_screen.dart';
import 'package:shared/shared.dart';

class ShiftCard extends StatelessWidget {
  final ShiftModel shift;

  const ShiftCard({
    super.key,
    required this.shift,
  });

  @override
  Widget build(BuildContext context) {
    final branches = MyStorage.branches.where((e) => shift.branchIds.contains(e.id)).toList();
    return Container(
      width: double.infinity,
      height: 247,
      margin: const EdgeInsets.only(bottom: 30),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: context.colorPalette.greyF9F,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  shift.name,
                  style: TextStyle(
                    color: context.colorPalette.blue091,
                    fontSize: 16,
                  ),
                ),
              ),
              EditButton(
                onPressed: () {
                  context.navigate((context) {
                    return ShiftInputScreen(
                      shift: shift,
                    );
                  });
                },
              ),
            ],
          ),
          Container(
            width: double.infinity,
            height: 61,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            margin: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: context.colorPalette.greyEAE),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    spacing: 3,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        context.appLocalization.startsFrom,
                        style: TextStyle(
                          color: context.colorPalette.blue475,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        shift.startHour,
                        style: TextStyle(
                          color: context.colorPalette.blue475,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    spacing: 3,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        context.appLocalization.endsIn,
                        style: TextStyle(
                          color: context.colorPalette.blue475,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        shift.endHour,
                        style: TextStyle(
                          color: context.colorPalette.blue475,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          WidgetTitle(
            title: context.appLocalization.branches,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: branches.map((branch) {
                return Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 13,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(color: context.colorPalette.greyEAE),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    spacing: 5,
                    children: [
                      Expanded(
                        child: Text(
                          context.appLocalization.branchName,
                          style: TextStyle(
                            color: context.colorPalette.blue475,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          branch.name,
                          style: TextStyle(
                            color: context.colorPalette.blue475,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      // SizedBox(
                      //   height: 20,
                      //   child: ListView.builder(
                      //     itemCount: 7,
                      //     shrinkWrap: true,
                      //     scrollDirection: Axis.horizontal,
                      //     physics: const NeverScrollableScrollPhysics(),
                      //     padding: EdgeInsets.zero,
                      //     itemBuilder: (context, index) {
                      //       return const Align(
                      //         widthFactor: 0.5,
                      //         child: BaseNetworkImage(
                      //           "",
                      //           width: 24,
                      //           height: 24,
                      //           shape: BoxShape.circle,
                      //         ),
                      //       );
                      //     },
                      //   ),
                      // ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
