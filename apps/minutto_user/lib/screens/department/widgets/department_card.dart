import 'package:shared/shared.dart';

class DepartmentCard extends StatelessWidget {
  const DepartmentCard({super.key});

  @override
  Widget build(BuildContext context) {
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
          Text(
            "قسم الجرافيك والتصميم",
            style: style,
          ),
          Text(
            "فرع عمان",
            style: style,
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            margin: const EdgeInsets.only(top: 15),
            alignment: AlignmentDirectional.centerEnd,
            decoration: BoxDecoration(
              color: context.colorPalette.greyABB,
              border: Border.all(color: context.colorPalette.greyE9E),
              borderRadius: BorderRadius.circular(8),
            ),
            child: CustomSwitch(
              onChanged: (value) {},
            ),
          ),
        ],
      ),
    );
  }
}
