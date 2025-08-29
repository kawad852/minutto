import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class FeedBackCard extends StatelessWidget {
  final FeedBackType feedBackType;
  const FeedBackCard({super.key, required this.feedBackType});

  @override
  Widget build(BuildContext context) {
    RewardsType rewardsType = RewardsType.allowance;
    String getIcon() {
      switch (feedBackType) {
        case FeedBackType.alarm:
          return MyIcons.alarm;
        case FeedBackType.rewards:
          return rewardsType == RewardsType.allowance
              ? MyIcons.allowance
              : MyIcons.favorite;
      }
    }

    return GestureDetector(
      onTap: () {
        context.navigate(
          (context) => FeedbackDetailsScreen(
            feedBackType: feedBackType,
            rewardsType: rewardsType,
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
            CustomSvg(getIcon()),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "انذار نهائي",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: context.colorPalette.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "19.02.2023",
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
            Icon(Icons.arrow_forward_ios_rounded, size: 20),
          ],
        ),
      ),
    );
  }
}
