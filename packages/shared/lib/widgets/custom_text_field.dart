import 'package:flutter/services.dart';
import 'package:shared/shared.dart';

class CustomTextField extends StatelessWidget {
  final String? initialValue;
  final Widget? prefixIcon, suffixIcon;
  final bool obscureText;
  final bool canRequestFocus;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final Function(String)? _onChanged;
  final Function()? onTap;
  final String? Function(BuildContext context, String?) _validator;
  final String? labelText;
  final String? hintText;
  final String? suffixText;
  final int? maxLines;
  final TextAlign? textAlign;

  const CustomTextField({
    super.key,
    this.initialValue,
    this.prefixIcon,
    this.obscureText = false,
    this.keyboardType,
    this.inputFormatters,
    required Function(String)? onChanged,
    this.onTap,
    required String? Function(BuildContext, String?) validator,
    this.labelText,
    this.hintText,
    this.maxLines,
    this.textAlign,
    this.canRequestFocus = true,
    this.suffixIcon,
    this.suffixText,
  }) : _onChanged = onChanged,
       _validator = validator;

  factory CustomTextField.text({
    Key? key,
    String? initialValue,
    Widget? prefixIcon,
    Widget? suffixIcon,
    required ValueChanged<String?> onChanged,
    bool required = true,
    String? labelText,
    String? hintText,
    int? maxLines,
    TextAlign? textAlign,
  }) {
    return CustomTextField(
      key: key,
      initialValue: initialValue,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      keyboardType: TextInputType.text,
      labelText: labelText,
      textAlign: textAlign,
      hintText: hintText,
      maxLines: maxLines,
      onChanged: (value) => onChanged(value),
      validator: (context, value) => required ? ValidationHelper.required(context, value) : null,
    );
  }

  factory CustomTextField.int({
    Key? key,
    int? initialValue,
    Widget? prefixIcon,
    String? suffixText,
    required ValueChanged<int?> onChanged,
    bool required = true,
    String? labelText,
  }) {
    return CustomTextField(
      key: key,
      initialValue: initialValue == 0 ? null : initialValue?.toString(),
      prefixIcon: prefixIcon,
      labelText: labelText,
      suffixText: suffixText,
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      onChanged: (value) => onChanged(int.tryParse(value)),
      validator: (context, value) => required ? ValidationHelper.required(context, value) : null,
    );
  }

  factory CustomTextField.double({
    Key? key,
    double? initialValue,
    Widget? prefixIcon,
    required ValueChanged<double?> onChanged,
    bool required = true,
    String? labelText,
  }) {
    return CustomTextField(
      key: key,
      initialValue: initialValue?.toString(),
      prefixIcon: prefixIcon,
      labelText: labelText,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}'))],
      onChanged: (value) => onChanged(double.tryParse(value)),
      validator: (context, value) => required ? ValidationHelper.required(context, value) : null,
    );
  }

  factory CustomTextField.email(
    BuildContext context, {
    Key? key,
    String? initialValue,
    Widget? prefixIcon,
    required ValueChanged<String?> onChanged,
    String? hintText,
    String? labelText,
    bool required = true,
  }) {
    return CustomTextField(
      key: key,
      initialValue: initialValue,
      prefixIcon: prefixIcon,
      hintText: hintText,
      labelText: hintText == null ? context.appLocalization.email : null,
      keyboardType: TextInputType.emailAddress,
      onChanged: (value) => onChanged(value),
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
    return CustomTextField(
      key: key,
      initialValue: initialValue,
      prefixIcon: prefixIcon,
      obscureText: true,
      keyboardType: TextInputType.text,
      maxLines: 1,
      labelText: context.appLocalization.password,
      onChanged: (value) => onChanged(value),
      validator: (context, value) => ValidationHelper.password(context, value, required: required),
    );
  }

  factory CustomTextField.clickable({
    Key? key,
    String? initialValue,
    required String labelText,
    Widget? prefixIcon,
    Widget? suffixIcon,
    required VoidCallback onTap,
    bool required = true,
    String? Function(BuildContext, String?)? validator,
  }) {
    return CustomTextField(
      key: key,
      initialValue: initialValue,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      labelText: labelText,
      canRequestFocus: false,
      validator:
          validator ??
          (context, value) => required ? ValidationHelper.required(context, value) : null,
      onChanged: null,
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      textAlign: textAlign ?? TextAlign.start,
      obscureText: obscureText,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      maxLines: maxLines,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixText: suffixText,
        suffixIcon: Center(child: suffixIcon),
        suffixIconConstraints: BoxConstraints(maxWidth: 40),
        // prefixIconConstraints: BoxConstraints(maxWidth: 80),
        hintText: hintText,
        labelText: labelText,
        alignLabelWithHint: true,
      ),
      onChanged: _onChanged,
      onTapOutside: (value) {
        context.unFocusKeyboard();
      },
      onTap: onTap,
      canRequestFocus: canRequestFocus,
      validator: (value) => _validator(context, value),
    );
  }
}
