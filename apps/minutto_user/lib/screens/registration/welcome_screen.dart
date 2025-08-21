import 'dart:math';

import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
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
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.appLocalization.accountSuccessfullyCreated,
                  style: TextStyle(
                    color: context.colorPalette.blue091,
                    fontSize: 36,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 40),
                Text(
                  context.appLocalization.waitUntilApproveAccount,
                  style: TextStyle(
                    color: context.colorPalette.blue091,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Text(
            context.appLocalization.goToLogIn,
            style: TextStyle(
              color: context.colorPalette.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          InkWell(
            onTap: () {
              context.navigateAndRemoveUntil((context) => const LoginScreen());
            },
            child: CustomSvg(MyIcons.arrowDown),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
