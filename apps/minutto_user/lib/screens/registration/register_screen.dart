import 'dart:math';

import 'package:minutto_user/minutto_user.dart';
import 'package:shared/shared.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _keyForm = GlobalKey<FormState>();
  final _user = UserModel();
  var _companyCode = '';
  bool _isExpanded = false;

  FirebaseFirestore get _firebaseFirestore => FirebaseFirestore.instance;

  void _onSubmit(BuildContext context) {
    if (_keyForm.currentState!.validate()) {
      ApiService.fetch(
        context,
        callBack: () async {
          final companyDoc = await _firebaseFirestore.companies
              .where(MyFields.code, isEqualTo: _companyCode)
              .limit(1)
              .get();
          if (context.mounted &&
              companyDoc.docs.isNotEmpty &&
              companyDoc.docs.first.data().code == _companyCode) {
            final company = companyDoc.docs.first.data();
            _user.companyId = company.id;
            context.navigate((context) {
              return PhoneVerifyScreen(
                user: _user,
              );
            });
          } else if (context.mounted) {
            context.showSnackBar(context.appLocalization.companyCodeError);
          }
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _keyForm,
        child: Column(
          children: [
            GestureDetector(
              onVerticalDragUpdate: (details) {
                if (details.delta.dy > 5) {
                  setState(() {
                    _isExpanded = true;
                  });
                }
              },
              child: AnimatedContainer(
                duration: Duration(microseconds: 2500),
                curve: Curves.easeIn,
                width: double.infinity,
                height: _isExpanded ? context.mediaQuery.height * 0.3 : 160,
                onEnd: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) => const LoginScreen(),
                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                        const begin = Offset.zero;
                        const end = Offset(0.0, 0.0);
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
                    bottom: Radius.circular(context.mediaQuery.height * 0.15),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        context.appLocalization.swipDownToLogIn,
                        style: TextStyle(
                          color: context.colorPalette.blueB2D,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Transform.rotate(
                      angle: -pi,
                      child: CustomSvg(MyIcons.arrowUp),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.appLocalization.wantCreateAccount,
                    style: TextStyle(
                      color: context.colorPalette.blue091,
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 20),
                    child: Text(
                      context.appLocalization.followYourInfo,
                      style: TextStyle(
                        color: context.colorPalette.blue091,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  CustomTextField.text(
                    onChanged: (value) => _user.name = value!,
                    hintText: context.appLocalization.name,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 13),
                    child: CustomTextField.email(
                      context,
                      onChanged: (value) => _user.email = value!,
                      hintText: context.appLocalization.email,
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(vertical: 13),
                  //   child: DropDownEditor<String>(
                  //     items: [
                  //       DropdownMenuItem(value: 'سوريا', child: Text('سوريا')),
                  //       DropdownMenuItem(value: 'الاردن', child: Text('الاردن')),
                  //     ],
                  //     onChanged: (value) {},
                  //     title: context.appLocalization.country,
                  //     value: null,
                  //   ),
                  // ),
                  PhoneEditor(
                    code: _user.phoneNumberCountryCode,
                    onChanged: (value) => _user.phoneNumber = value!,
                    onCodeSelected: (value) => _user.phoneNumberCountryCode = value,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 13),
                    child: CustomTextField.text(
                      onChanged: (value) => _companyCode = value!,
                      hintText: context.appLocalization.companyCodeWorkFor,
                    ),
                  ),
                  StretchedButton(
                    onPressed: () {
                      _onSubmit(context);
                    },
                    child: Text(
                      context.appLocalization.register,
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
          ],
        ),
      ),
    );
  }
}
