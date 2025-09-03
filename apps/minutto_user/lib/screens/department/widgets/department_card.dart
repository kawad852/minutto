import 'package:minutto_user/screens/department/department_input_screen.dart';
import 'package:shared/shared.dart';

class DepartmentCard extends StatelessWidget {
  final DepartmentModel department;

  const DepartmentCard({
    super.key,
    required this.department,
  });

  @override
  Widget build(BuildContext context) {
    final branch = department.branch;
    final style = TextStyle(
      color: context.colorPalette.grey718,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    );
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
        color: context.colorPalette.greyF9F,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        spacing: 8,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  department.name,
                  overflow: TextOverflow.ellipsis,
                  style: style,
                ),
              ),
              CustomMenu(
                onEdit: () {
                  context.navigate((context) {
                    return DepartmentInputScreen(
                      department: department,
                    );
                  });
                },
              ),
            ],
          ),
          Text(
            branch.name,
            style: style,
          ),
          // Container(
          //   width: double.infinity,
          //   padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          //   margin: const EdgeInsets.only(top: 15),
          //   alignment: AlignmentDirectional.centerEnd,
          //   decoration: BoxDecoration(
          //     color: context.colorPalette.greyABB,
          //     border: Border.all(color: context.colorPalette.greyE9E),
          //     borderRadius: BorderRadius.circular(8),
          //   ),
          //   child: CustomSwitch(
          //     onChanged: (value) {},
          //   ),
          // ),
        ],
      ),
    );
  }
}
