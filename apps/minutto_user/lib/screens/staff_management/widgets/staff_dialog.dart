import 'package:minutto_user/minutto_user.dart';
import 'package:shared/shared.dart';

class StaffDialog extends StatelessWidget {
  const StaffDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final style = TextStyle(
      color: context.colorPalette.black,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    );
    final boxDecoration = BoxDecoration(
      color: context.colorPalette.blue33,
      borderRadius: BorderRadius.circular(8),
    );
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 25),
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: Container(
        width: double.infinity,
        height: 250,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                context.navigate(
                  (context) => const AdditionsInputScreen(additionsType: AdditionsType.alarm),
                );
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  vertical: 13,
                  horizontal: 13,
                ),
                decoration: boxDecoration,
                child: Text(
                  context.appLocalization.addAlarm,
                  style: style,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                context.navigate(
                  (context) => const AdditionsInputScreen(additionsType: AdditionsType.discount),
                );
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  vertical: 13,
                  horizontal: 13,
                ),
                decoration: boxDecoration,
                child: Text(
                  context.appLocalization.addDiscount,
                  style: style,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                context.navigate(
                  (context) => const AdditionsInputScreen(additionsType: AdditionsType.incentive),
                );
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  vertical: 13,
                  horizontal: 13,
                ),
                decoration: boxDecoration,
                child: Text(
                  context.appLocalization.addIncentive,
                  style: style,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
