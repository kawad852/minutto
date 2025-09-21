import 'package:minutto_user/minutto_user.dart';
import 'package:shared/shared.dart';

class FAQManageCard extends StatelessWidget {
  final FAQModel faq;

  const FAQManageCard({
    super.key,
    required this.faq,
  });

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
                  faq.question,
                  style: TextStyle(
                    color: context.colorPalette.blue091,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              CustomMenu(
                onEdit: () {
                  context.navigate((context) {
                    return FAQInputScreen(
                      faq: faq,
                    );
                  });
                },
              ),
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
              faq.answer,
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
