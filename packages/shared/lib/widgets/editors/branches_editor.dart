import 'package:shared/shared.dart';

class BranchesEditor extends StatelessWidget {
  final List<String> branchIds;
  final ValueChanged<String> onChanged;
  final VoidCallback onClosed;

  const BranchesEditor({
    super.key,
    required this.branchIds,
    required this.onChanged,
    required this.onClosed,
  });

  @override
  Widget build(BuildContext context) {
    return WidgetTitle(
      title: context.appLocalization.chooseMoreBranch,
      child: ListBody(
        children: [
          MenuAnchor(
            // childFocusNode: _buttonFocusNode,
            crossAxisUnconstrained: false,
            onClose: onClosed,
            menuChildren: MyStorage.branches.map((e) {
              final id = e.id;
              return CheckboxMenuButton(
                // closeOnActivate: false,
                value: branchIds.contains(id),
                onChanged: (bool? value) {
                  onChanged(id);
                },
                child: Text(e.name),
              );
            }).toList(),
            builder: (BuildContext context, MenuController controller, Widget? child) {
              return CustomTextField.clickable(
                validator: (context, value) {
                  if (branchIds.isEmpty) {
                    return context.appLocalization.requiredField;
                  }
                  return null;
                },
                labelText: context.appLocalization.choose,
                onTap: () {
                  controller.open();
                },
              );
            },
          ),
          Wrap(
            spacing: 5,
            children: branchIds.map((e) {
              final name = CacheService.instance.getBranch(e).name;
              return InputChip(
                label: Text(name),
                onDeleted: () {
                  onChanged(e);
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
