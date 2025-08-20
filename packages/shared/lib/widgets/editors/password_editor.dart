import '../../shared.dart';

class PasswordEditor extends StatelessWidget {
  final String? initialValue;
  final Function(String?) onChanged;
  final bool withErrorIndicator;

  const PasswordEditor({
    super.key,
    required this.onChanged,
    required this.initialValue,
    this.withErrorIndicator = true,
  });

  @override
  Widget build(BuildContext context) {
    return BaseEditor(
      initialValue: initialValue,
      title: context.appLocalization.password,
      obscureText: true,
      required: true,
      onChanged: (value) {
        if (value.isEmpty) {
          onChanged(null);
        } else {
          onChanged(value);
        }
      },
      validator: (value) => ValidationHelper.password(context, value),
    );
  }
}
