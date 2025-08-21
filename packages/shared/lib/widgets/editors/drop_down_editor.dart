import '../../shared.dart';

class DropDownEditor<T> extends StatelessWidget {
  final T? value;
  final Function(T?) onChanged;
  final String title;
  final List<DropdownMenuItem<T>> items;
  final EdgeInsetsGeometry? padding;

  const DropDownEditor({
    super.key,
    required this.value,
    required this.onChanged,
    required this.title,
    required this.items,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: kMaxWidth),
        child: DropdownButtonFormField(
          onChanged: onChanged,
          initialValue: value,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(hintText: title),
          validator: (value) {
            if (value == null) {
              return context.appLocalization.requiredField;
            }
            return null;
          },
          items: items,
        ),
      ),
    );
  }
}
