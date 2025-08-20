import 'package:shared/shared.dart';

class LauncherService {
  //phone, whatsApp and email
  static String phoneUrl(String phoneNum) => 'tel://$phoneNum';
  static String emailUrl(String email) => 'mailto:$email';

  static Future<void> _lunch(BuildContext context, String path) async {
    try {
      final uri = Uri.parse(path);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      }
    } catch (e) {
      debugPrint("UrlLauncherError:: $e");
      if (context.mounted) {
        context.showSnackBar(context.appLocalization.generalError);
      }
    }
  }

  static Future<void> lunchPhoneCall(BuildContext context, {required String number}) async {
    _lunch(context, 'tel://$number');
  }

  // static Future<void> openWhatsApp(BuildContext context) async {
  //   try {
  //     final path = Platform.isAndroid ? "https://wa.me/$kWhatsAppNum/" : "https://api.whatsapp.com/send?phone=$kWhatsAppNum";
  //     final uri = Uri.parse(path);
  //     if (await canLaunchUrl(uri)) {
  //       await launchUrl(uri, mode: LaunchMode.externalApplication);
  //     }
  //   } catch (e) {
  //     debugPrint("UrlLauncherError:: $e");
  //     if (context.mounted) {
  //       context.showSnackBar(context.appLocalization.generalError);
  //     }
  //   }
  // }
}
