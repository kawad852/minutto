import '../../shared.dart';

class DropDownEditor<T> extends StatelessWidget {
  final T? value;
  final Function(T?) onChanged;
  final String? title;
  final String? label;
  final List<DropdownMenuItem<T>> items;
  final EdgeInsetsGeometry? padding;

  const DropDownEditor({
    super.key,
    required this.value,
    required this.onChanged,
    this.title,
    required this.items,
    this.padding,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: kMaxWidth),
        child: ButtonTheme(
          alignedDropdown: true,
          child: DropdownButtonFormField(
            isExpanded: true,
            onChanged: onChanged,
            value: value,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              hintText: title,
              label: label != null ? Text(label!) : null,
            ),
            validator: (value) {
              if (value == null) {
                return context.appLocalization.requiredField;
              }
              return null;
            },
            items: items,
          ),
        ),
      ),
    );
  }
}
