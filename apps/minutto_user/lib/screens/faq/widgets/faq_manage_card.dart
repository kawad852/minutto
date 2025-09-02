import 'package:shared/shared.dart';

class FAQManageCard extends StatelessWidget {
  const FAQManageCard({super.key});

  @override
  Widget build(BuildContext context) {
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
                  "كيف يمكن تقديم طلب إجازة؟",
                  style: TextStyle(
                    color: context.colorPalette.blue091,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              CustomMenu(),
            ],
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: context.colorPalette.greyEAE),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              "يساعد تطبيق مينيتو الشركات الحديثة في إدارة شؤون الموظفين و الموارد البشرية بطريقة سلسة و سهلة، كما أنه يساعد في ادارة الحضور و حساب الإجازات ...",
              style: TextStyle(
                color: context.colorPalette.blue344,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
