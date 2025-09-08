import 'package:minutto_user/minutto_user.dart';
import 'package:shared/shared.dart';

class AdvanceCard extends StatelessWidget {
  final SalaryAdvanceModel salaryAdvance;

  const AdvanceCard({
    super.key,
    required this.salaryAdvance,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.navigate(
          (context) => SalaryAdvanceDetailsScreen(
            salaryAdvance: salaryAdvance,
          ),
        );
      },
      child: Container(
        width: double.infinity,
        height: 60,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: context.colorPalette.blueD8E,
          borderRadius: BorderRadius.circular(kRadiusSecondary),
        ),
        child: Row(
          children: [
            const CustomSvg(MyIcons.debtYellow),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${salaryAdvance.amount} ${context.currency}",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: context.colorPalette.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    salaryAdvance.createdAt.defaultFormat,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: context.colorPalette.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              StatusEnum.info(context, salaryAdvance.status).$1,
              style: TextStyle(
                color: context.colorPalette.yellowF69,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
