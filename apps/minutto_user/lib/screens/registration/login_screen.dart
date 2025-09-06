import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _isExpanded = false;
  final _user = UserModel();

  void _onSubmit(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      ApiService.fetch(
        context,
        callBack: () async {
          await context.userProvider.register(
            context,
            user: _user,
            onSuccess: () {
              context.navigateAndRemoveUntil((context) {
                return AppNavBar();
              });
            },
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            CustomSvg(MyIcons.fingerprint),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Text(
                    context.appLocalization.helloAndWelcome,
                    style: TextStyle(
                      color: context.colorPalette.blue091,
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    context.appLocalization.dearUser,
                    style: TextStyle(
                      color: context.colorPalette.blue091,
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    context.appLocalization.haveAccount,
                    style: TextStyle(
                      color: context.colorPalette.blue091,
                      fontSize: 20,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: CustomTextField.phone(
                      context,
                      onChanged: (value) => _user.phoneNumber = value!,
                      code: null,
                      onCodeSelected: (value) => _user.phoneNumberCountryCode = value,
                    ),
                  ),
                  StretchedButton(
                    onPressed: () {
                      _onSubmit(context);
                    },
                    child: Text(
                      context.appLocalization.login,
                      style: TextStyle(
                        color: context.colorPalette.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            GestureDetector(
              onVerticalDragUpdate: (details) {
                if (details.delta.dy < -2) {
                  setState(() {
                    _isExpanded = true;
                  });
                }
              },
              child: AnimatedContainer(
                duration: Duration(microseconds: 500),
                curve: Curves.easeIn,
                width: double.infinity,
                height: _isExpanded ? context.mediaQuery.height * 0.3 : 160,
                onEnd: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const RegisterScreen(),
                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                        const begin = Offset(0.0, 1.0);
                        const end = Offset.zero;
                        const curve = Curves.ease;
                        var tween = Tween(
                          begin: begin,
                          end: end,
                        ).chain(CurveTween(curve: curve));
                        return SlideTransition(
                          position: animation.drive(tween),
                          child: child,
                        );
                      },
                    ),
                    (route) => false,
                  );
                },
                decoration: BoxDecoration(
                  color: context.colorPalette.blue091,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(context.mediaQuery.height * 0.22),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomSvg(MyIcons.arrowUp),
                    const SizedBox(height: 10),
                    Text(
                      context.appLocalization.swipeToCreateAccount,
                      style: TextStyle(
                        color: context.colorPalette.blueB2D,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
