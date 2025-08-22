import 'package:shared/shared.dart';

class CheckingScreen extends StatefulWidget {
  const CheckingScreen({super.key});

  @override
  State<CheckingScreen> createState() => _CheckingScreenState();
}

class _CheckingScreenState extends State<CheckingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          context.appLocalization.verifying,
          style: TextStyle(
            color: context.colorPalette.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: StretchedButton(
          onPressed: () {},
          backgroundColor: context.colorPalette.redD42,
          child: Text(
            context.appLocalization.cancel,
            style: TextStyle(
              color: context.colorPalette.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              context.appLocalization.yourLocationVerified,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: context.colorPalette.blue091,
                fontSize: 16,
              ),
            ),
            CustomSvg(MyIcons.qrCodeIcon),
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
