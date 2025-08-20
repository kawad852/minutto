import '../../shared.dart';
import '../exports/algolia_exports.dart';

class StripeService {
  Future<void> pay(
    BuildContext context, {
    required double amount,
    required String id,
    required VoidCallback onSuccess,
  }) async {
    try {
      Stripe.publishableKey =
          "pk_test_51OM5tgAkjqA6W8ytWb8xawn0mqQ7RUKjx6RPrQ6RF4nsBZKyo5GJNYE3S2sMyNUF46cGrAS24pVTTDwG9o9jjKjt00ev4x0tk2";
      await dotenv.load(fileName: 'assets/.env');
      final paymentIntent = await _createPaymentIntent(amount, id);
      final stripe = Stripe.instance;
      if (context.mounted) {
        await stripe
            .initPaymentSheet(
              paymentSheetParameters: SetupPaymentSheetParameters(
                paymentIntentClientSecret: paymentIntent!['client_secret'],
                style: ThemeMode.light,
                merchantDisplayName: context.appLocalization.appName,
              ),
            )
            .catchError((onError) {
              debugPrint("error::: $onError");
              return onError;
            });
        await stripe.presentPaymentSheet().then(
          (value) {
            debugPrint("Success Payment");
            onSuccess();
          },
          onError: (error) {
            if (error is StripeException) {
              if (context.mounted && error.error.code != FailureCode.Canceled) {
                context.showSnackBar(context.appLocalization.generalError);
              }
            }
          },
        );
      }
    } catch (e) {
      debugPrint("StripeError:: $e");
    }
  }

  _createPaymentIntent(double amount, String id) async {
    final parsedAmount = amount.toStringAsFixed(2).replaceAll('.', '');
    try {
      Map<String, dynamic> body = {
        'amount': parsedAmount,
        'currency': 'USD',
        'metadata[order_id]': id,
      };
      var response = await post(
        Uri.parse('https://api.stripe.com/v1/payment_intents'),
        headers: {
          'Authorization': 'Bearer ${dotenv.env['STRIPE_SECRET']}',
          'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: body,
      );

      return json.decode(response.body);
    } catch (err) {
      debugPrint("PaymentIntentError:: $err");
      throw Exception(err.toString());
    }
  }
}
