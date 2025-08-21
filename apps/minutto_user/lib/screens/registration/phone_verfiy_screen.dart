import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class PhoneVerfiyScreen extends StatefulWidget {
  const PhoneVerfiyScreen({super.key});

  @override
  State<PhoneVerfiyScreen> createState() => _PhoneVerfiyScreenState();
}

class _PhoneVerfiyScreenState extends State<PhoneVerfiyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 75),
            Text(
              context.appLocalization.verifyPhoneNumber,
              style: TextStyle(
                color: context.colorPalette.blue091,
                fontSize: 36,
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 30),
              child: Text(
                context.appLocalization.sendVerficationCode,
                style: TextStyle(
                  color: context.colorPalette.blue091,
                  fontSize: 20,
                ),
              ),
            ),
            CustomTextField.text(
              onChanged: (value) {},
              hintText: context.appLocalization.verificationCode,
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    context.appLocalization.resendCodeAfter,
                    style: TextStyle(
                      color: context.colorPalette.blue091,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "59 ${context.appLocalization.second}",
                    style: TextStyle(
                      color: context.colorPalette.blueB2D,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            StretchedButton(
              onPressed: () {
                context.navigateReplacement((context) => const WelcomeScreen());
              },
              child: Text(
                context.appLocalization.confirmAccount,
                style: TextStyle(
                  color: context.colorPalette.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
