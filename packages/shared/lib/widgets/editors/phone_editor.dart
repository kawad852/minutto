import 'package:flutter/services.dart';
import 'package:shared/shared.dart';

import '../phone_code_button.dart';

class PhoneEditor extends StatelessWidget {
  final String? code;
  final Function(String code) onCodeSelected;
  final ValueChanged<String?> onChanged;
  final String? initialValue;
  final bool required;

  const PhoneEditor({
    super.key,
    required this.code,
    required this.onCodeSelected,
    this.initialValue,
    required this.onChanged,
    this.required = true,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: CustomTextField(
        initialValue: initialValue,
        hintText: context.appLocalization.phoneNum,
        prefixIcon: PhoneCodeButton(
          code: code ?? kFallBackCountryCode,
          onCodeSelected: onCodeSelected,
        ),
        // textAlign: TextAlign.end,
        keyboardType: TextInputType.phone,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(11),
        ],
        onChanged: (value) => onChanged(value),
        validator: (context, value) => required ? ValidationHelper.phone(context, value) : null,
      ),
    );
  }
}
