import '../shared.dart';

class ValidationHelper {
  // static final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  // static final decimalNumbersRegex = RegExp(r'^\d*\.?\d*$');
  // static final intNumberRegex = RegExp(r'^\d+$');

  static String? required(BuildContext context, String? value) {
    if (value == null || value.trim().isEmpty) {
      return context.appLocalization.requiredField;
    }
    return null;
  }

  static String? email(BuildContext context, String? value, {bool required = false}) {
    final requiredCheck = ValidationHelper.required(context, value);
    if (required && requiredCheck != null) return requiredCheck;

    final regex = RegExp(r'^[\w\.-]+@[\w\.-]+\.\w+$');
    if (value != null && value.isNotEmpty && !regex.hasMatch(value)) {
      return context.appLocalization.invalidEmail;
    }

    return null;
  }

  static String? phone(BuildContext context, String? value, {bool required = false}) {
    final requiredCheck = ValidationHelper.required(context, value);
    if (required && requiredCheck != null) return requiredCheck;

    if (value != null && value.length < 9) {
      return context.appLocalization.invalidPhoneNum;
    }

    return null;
  }

  static String? password(BuildContext context, String? value, {bool required = false}) {
    final requiredCheck = ValidationHelper.required(context, value);
    if (required && requiredCheck != null) return requiredCheck;

    if (value != null && value.length < 6) {
      return context.appLocalization.passwordTooShort;
    }

    return null;
  }
}
