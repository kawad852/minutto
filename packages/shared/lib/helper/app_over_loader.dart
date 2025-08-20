import '../shared.dart';

class AppOverlayLoader {
  static void show({Widget? indicator}) {
    EasyLoading.instance
      ..loadingStyle = EasyLoadingStyle.custom
      ..maskType = EasyLoadingMaskType.custom
      ..indicatorColor = Colors.transparent
      ..textColor = Colors.transparent
      ..maskColor = Colors.black26
      ..backgroundColor = Colors.transparent
      ..boxShadow = [];
    EasyLoading.show(indicator: indicator ?? Center(child: CircularProgressIndicator()));
  }

  static bool get isShown => EasyLoading.isShow;

  static void hide() {
    EasyLoading.dismiss();
  }

  static void fakeLoading({int duration = 1000}) {
    show();
    Future.delayed(Duration(milliseconds: duration), () {
      hide();
    });
  }
}
