import 'package:flutter/services.dart';
import 'package:shared/shared.dart';
import 'package:shared/widgets/phone_code_button.dart'; // for context.appLocalization

class CustomTextField extends StatelessWidget {
  final String? initialValue;
  final Widget? prefixIcon;
  final bool obscureText;
  final TextInputType keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final Function(String)? _onChanged;
  final String? Function(BuildContext context, String?) _validator;
  final String? labelText;
  final String? hintText;
  final int? maxLines;

  const CustomTextField._({
    super.key,
    this.initialValue,
    this.prefixIcon,
    this.obscureText = false,
    required this.keyboardType,
    this.inputFormatters,
    required Function(String)? onChanged,
    required String? Function(BuildContext, String?) validator,
    this.labelText,
    this.hintText,
    this.maxLines,
  }) : _onChanged = onChanged,
       _validator = validator;

  factory CustomTextField.text({
    Key? key,
    String? initialValue,
    Widget? prefixIcon,
    required ValueChanged<String?> onChanged,
    bool required = true,
    String? labelText,
    String? hintText,
    int? maxLines,
  }) {
    return CustomTextField._(
      key: key,
      initialValue: initialValue,
      prefixIcon: prefixIcon,
      keyboardType: TextInputType.text,
      labelText: labelText,
      hintText: hintText,
      maxLines: maxLines,
      onChanged: (value) => onChanged(value.isEmpty ? null : value),
      validator: (context, value) => required ? ValidationHelper.required(context, value) : null,
    );
  }

  factory CustomTextField.int({
    Key? key,
    int? initialValue,
    Widget? prefixIcon,
    required ValueChanged<int?> onChanged,
    bool required = true,
    String? labelText,
  }) {
    return CustomTextField._(
      key: key,
      initialValue: initialValue?.toString(),
      prefixIcon: prefixIcon,
      labelText: labelText,
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      onChanged: (value) => onChanged(value.isEmpty ? null : int.tryParse(value)),
      validator: (context, value) => required ? ValidationHelper.required(context, value) : null,
    );
  }

  factory CustomTextField.double({
    Key? key,
    double? initialValue,
    Widget? prefixIcon,
    required ValueChanged<double?> onChanged,
    bool required = true,
  }) {
    return CustomTextField._(
      key: key,
      initialValue: initialValue?.toString(),
      prefixIcon: prefixIcon,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}'))],
      onChanged: (value) => onChanged(value.isEmpty ? null : double.tryParse(value)),
      validator: (context, value) => required ? ValidationHelper.required(context, value) : null,
    );
  }

  factory CustomTextField.phone(
    BuildContext context, {
    Key? key,
    String? initialValue,
    required String? code,
    required ValueChanged<String?> onChanged,
    required final Function(String code) onCodeSelected,
    bool required = true,
  }) {
    return CustomTextField._(
      key: key,
      initialValue: initialValue,
      labelText: context.appLocalization.phoneNum,
      prefixIcon: PhoneCodeButton(
        code: code ?? kFallBackCountryCode,
        onCodeSelected: onCodeSelected,
      ),
      keyboardType: TextInputType.phone,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(11),
      ],
      onChanged: (value) => onChanged(value.isEmpty ? null : value),
      validator: (context, value) => required ? ValidationHelper.phone(context, value) : null,
    );
  }

  factory CustomTextField.email(
    BuildContext context, {
    Key? key,
    String? initialValue,
    Widget? prefixIcon,
    required ValueChanged<String?> onChanged,
    bool required = true,
  }) {
    return CustomTextField._(
      key: key,
      initialValue: initialValue,
      prefixIcon: prefixIcon,
      labelText: context.appLocalization.email,
      keyboardType: TextInputType.emailAddress,
      onChanged: (value) => onChanged(value.isEmpty ? null : value),
      validator: (context, value) => ValidationHelper.email(context, value, required: required),
    );
  }

  factory CustomTextField.password(
    BuildContext context, {
    Key? key,
    String? initialValue,
    Widget? prefixIcon,
    required ValueChanged<String?> onChanged,
    bool required = true,
  }) {
    return CustomTextField._(
      key: key,
      initialValue: initialValue,
      prefixIcon: prefixIcon,
      obscureText: true,
      keyboardType: TextInputType.text,
      maxLines: 1,
      labelText: context.appLocalization.email,
      onChanged: (value) => onChanged(value.isEmpty ? null : value),
      validator: (context, value) => ValidationHelper.password(context, value, required: required),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      obscureText: obscureText,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      maxLines: maxLines,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        hintText: hintText,
        labelText: labelText,
        alignLabelWithHint: true,
      ),
      onChanged: _onChanged,
      onTapOutside: (value) {
        context.unFocusKeyboard();
      },
      validator: (value) => _validator(context, value),
    );
  }
}
