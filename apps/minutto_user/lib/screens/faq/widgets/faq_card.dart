import 'package:shared/shared.dart';

class FAQCard extends StatelessWidget {
  const FAQCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(kRadiusSecondary),
      child: ExpansionTile(
        initiallyExpanded: false,
        childrenPadding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        shape: Border(),
        backgroundColor: context.colorPalette.greyF7F,
        collapsedBackgroundColor: context.colorPalette.greyF7F,
        title: Text(
          "ما هو تطبيق مينيتو ؟",
          style: TextStyle(
            color: context.colorPalette.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        children: [
          Text(
            "يساعد تطبيق مينيتو الشركات الحديثة في إدارة شؤون الموظفين و الموارد البشرية بطريقة سلسة و سهلة، كما أنه يساعد في ادارة الحضور و حساب الإجازات ...",
            style: TextStyle(
              color: context.colorPalette.grey333,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
