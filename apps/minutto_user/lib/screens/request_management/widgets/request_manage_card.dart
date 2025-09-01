import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class RequestManageCard extends StatelessWidget {
  const RequestManageCard({super.key});

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
          color: context.colorPalette.greyF9F,
          border: Border.all(color: context.colorPalette.greyEAE),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              spacing: 15,
              children: [
                BaseNetworkImage(
                  "",
                  width: 32,
                  height: 32,
                  shape: BoxShape.circle,
                ),
                Expanded(
                  child: Column(
                    spacing: 4,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "صهيب البكار",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: context.colorPalette.black,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "مصمم جرافيك",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: context.colorPalette.blue475,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            RequestManageDetails(
              title: context.appLocalization.requestType,
              value: "استراحة جزئية",
            ),
            RequestManageDetails(
              title: context.appLocalization.fromHour,
              value: "05:00 PM",
            ),
            RequestManageDetails(
              title: context.appLocalization.toHour,
              value: "05:00 PM",
            ),
            RequestManageDetails(
              title: context.appLocalization.dateAndTimeRequest,
              value: "13 اغسطس 2025",
            ),
            const SizedBox(height: 12),
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
