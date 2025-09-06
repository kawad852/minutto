import '../shared.dart';

class WeCanAuth {
  WeCanAuth._internal();
  static final WeCanAuth instance = WeCanAuth._internal();

  final _testPhoneNumber = "791595029";
  final _baseURL = "https://api.doverifyit.com";
  final _authKey = "730|v4uGHvUu9Zc956OLiF8HiUDYwbZbbxupAZ6kaQlHIzHmoQx2rZma2EtM3ArY";
  final _apiKey = "8557603931";

  Future<void> sendPinCode(
    BuildContext context, {
    required String countryCode,
    required String phoneNumber,
    bool isResend = false,
    required VoidCallback onSuccess,
  }) async {
    late Response response;
    if (phoneNumber == _testPhoneNumber) {
      await Future.delayed(const Duration(seconds: 1));
      response = Response(jsonEncode(OtpModel().toJson()), 200);
    } else {
      response = await post(
        Uri.parse('$_baseURL/api/otp-send/$_apiKey'),
        headers: {
          'Content-Type': 'application/json',
          "Authorization": _authKey,
        },
        body: jsonEncode({
          "contact": "${context.getDialCode(countryCode)}$phoneNumber",
        }),
      );
    }
    final body = OtpModel.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
    if (response.statusCode == 200 && context.mounted) {
      if (isResend) {
        context.showSnackBar(context.appLocalization.otpResendMsg);
        return;
      }
      onSuccess();
    } else if (context.mounted) {
      context.showSnackBar(body.message ?? context.appLocalization.generalError);
    }
  }

  Future<void> verifyCode(
    BuildContext context, {
    required String countryCode,
    required String phoneNumber,
    required String otp,
    required Future Function() onSuccess,
  }) async {
    ApiService.fetch(
      context,
      callBack: () async {
        late Response response;
        if (phoneNumber == _testPhoneNumber) {
          await Future.delayed(const Duration(seconds: 1));
          response = Response(jsonEncode(OtpModel().toJson()), 200);
        } else {
          response = await post(
            Uri.parse('$_baseURL/api/otp-check/$_apiKey'),
            headers: {
              'Content-Type': 'application/json',
              "Authorization": _authKey,
            },
            body: jsonEncode({
              "otp": otp,
            }),
          );
        }
        final body = OtpModel.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
        if (response.statusCode == 200 && context.mounted) {
          if (context.mounted) {
            await onSuccess();
          }
        } else if (context.mounted) {
          context.showSnackBar(body.message ?? context.appLocalization.generalError);
        }
      },
    );
  }
}
