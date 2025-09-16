import 'package:minutto_user/minutto_user.dart';
import 'package:minutto_user/screens/registration/widgets/otp_timer.dart';
import 'package:shared/shared.dart';

class PhoneVerifyScreen extends StatefulWidget {
  final UserModel user;
  final bool isLogin;

  const PhoneVerifyScreen({
    super.key,
    required this.user,
    this.isLogin = false,
  });

  @override
  State<PhoneVerifyScreen> createState() => _PhoneVerifyScreenState();
}

class _PhoneVerifyScreenState extends State<PhoneVerifyScreen> {
  String? _code;

  UserModel get _user => widget.user;

  void _onSubmit(BuildContext context) {
    WeCanAuth.instance.verifyCode(
      context,
      countryCode: _user.phoneNumberCountryCode,
      phoneNumber: _user.phoneNumber,
      otp: _code!,
      onSuccess: () async {
        await context.userProvider.register(
          context,
          user: _user,
          isLogin: widget.isLogin,
          onSuccess: () {
            context.navigateAndRemoveUntil((context) => AppNavBar());
          },
        );
      },
    );
  }

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
              onChanged: (value) => _code = value,
              hintText: context.appLocalization.verificationCode,
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: OtpTimer(
                onResend: () {
                  WeCanAuth.instance.sendPinCode(
                    context,
                    countryCode: _user.phoneNumberCountryCode,
                    phoneNumber: _user.phoneNumber,
                    onSuccess: () {
                      setState(() {
                        _code = '';
                      });
                      context.showSnackBar(context.appLocalization.codeResent);
                    },
                    isResend: true,
                  );
                },
              ),
            ),
            StretchedButton(
              onPressed: () {
                _onSubmit(context);
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
