import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class AdvanceManageCard extends StatelessWidget {
  const AdvanceManageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.navigate(
          (context) => const RequestManagementDetailsScreen(),
        );
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: context.colorPalette.greyEAE),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              spacing: 10,
              children: [
                CustomSvg(
                  MyIcons.calander,
                  color: context.colorPalette.black,
                ),
                Expanded(
                  child: Text(
                    "${context.appLocalization.orderDate} 30 اغسطس 2025",
                    style: TextStyle(
                      color: context.colorPalette.blue091,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
              decoration: BoxDecoration(
                color: context.colorPalette.greyF9F,
                border: Border.all(color: context.colorPalette.greyEAE),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                spacing: 12,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      AdvanceDetails(
                        title: context.appLocalization.branch,
                        value: "عمان",
                      ),
                      AdvanceDetails(
                        title: context.appLocalization.department,
                        value: "التصميم",
                      ),
                      AdvanceDetails(
                        title: context.appLocalization.employeeName,
                        value: "أحمد حامد",
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      AdvanceDetails(
                        title: context.appLocalization.valuee,
                        value: "300 JOD",
                      ),
                      AdvanceDetails(
                        title: context.appLocalization.remainingBalanceAdvance,
                        value: "300 JOD",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              spacing: 20,
              children: [
                RequestButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return ReplyDialog(
                          replyType: ReplyType.accept,
                        );
                      },
                    );
                  },
                  backgroundColor: context.colorPalette.green19B,
                  title: context.appLocalization.accept,
                ),
                RequestButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return ReplyDialog(
                          replyType: ReplyType.reject,
                        );
                      },
                    );
                  },
                  backgroundColor: context.colorPalette.redF95,
                  title: context.appLocalization.reject,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
