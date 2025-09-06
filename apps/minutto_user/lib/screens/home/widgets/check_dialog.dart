import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class CheckDialog extends StatelessWidget {
  const CheckDialog({super.key});

  void _checkLocation(BuildContext context) async {
    ApiService.fetch(
      context,
      callBack: () async {
        final companyLocation = MySharedPreferences.company!.geoLocation!;
        final userLocation = await context.locationProvider.determinePosition(context);
        if (userLocation != null) {
          final distance = Geolocator.distanceBetween(
            companyLocation.latitude,
            companyLocation.longitude,
            userLocation.latitude,
            userLocation.longitude,
          );
          debugPrint("Distance:: $distance");
          if (context.mounted) {
            _verify(context: context, distance: distance);
          }
        }
      },
    );
  }

  void _verify({
    required BuildContext context,
    required double distance,
  }) {
    if (context.mounted && distance < 20) {
      context.showSnackBar(context.appLocalization.attendanceSuccessMsg);
    } else if (context.mounted) {
      context.showSnackBar(
        "",
        contentWidget: ListTile(
          titleTextStyle: TextStyle(
            color: context.colorScheme.onPrimary,
            fontFamily: MyTheme.fontFamily,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          subtitleTextStyle: TextStyle(
            color: context.colorScheme.surface,
            fontFamily: MyTheme.fontFamily,
          ),
          title: Text(context.appLocalization.attendanceFailedTitle),
          subtitle: Text(context.appLocalization.attendanceFailedBody),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 25),
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: Container(
        width: double.infinity,
        height: 265,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: CustomSvg(MyIcons.close),
                ),
                const SizedBox(width: 10),
                Text(
                  context.appLocalization.chooseVerfiyMethod,
                  style: TextStyle(
                    color: context.colorPalette.blue091,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  DialogBubble(
                    onTap: () {
                      context.navigate((context) => const CheckingScreen());
                    },
                    icon: MyIcons.qrCode,
                    title: context.appLocalization.scanQRCode,
                  ),
                  const SizedBox(width: 10),
                  DialogBubble(
                    onTap: () {
                      Navigator.pop(context);
                      _checkLocation(context);
                    },
                    icon: MyIcons.check,
                    title: context.appLocalization.confirmLocation,
                  ),
                ],
              ),
            ),
            Text(
              context.appLocalization.mustPersentAtWork,
              style: TextStyle(
                color: context.colorPalette.blue091,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  context.appLocalization.currentTime,
                  style: TextStyle(
                    color: context.colorPalette.blue091,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "AM 08:31:23",
                  style: TextStyle(
                    color: context.colorPalette.redD42,
                    fontSize: 16,
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
