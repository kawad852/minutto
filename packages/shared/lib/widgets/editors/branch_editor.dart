import 'package:shared/shared.dart';

class BranchEditor extends StatelessWidget {
  final String? value;
  final ValueChanged<String?> onChanged;

  const BranchEditor({
    super.key,
    required this.onChanged,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    final branches = MyStorage.branches;
    return WidgetTitle(
      title: context.appLocalization.branch,
      child: DropDownEditor<String>(
        items: branches.map((e) {
          return DropdownMenuItem(
            value: e.id,
            child: Text(e.name),
          );
        }).toList(),
        onChanged: onChanged,
        title: context.appLocalization.choose,
        value: (value?.isEmpty ?? false) ? null : value,
      ),
    );
  }
}
