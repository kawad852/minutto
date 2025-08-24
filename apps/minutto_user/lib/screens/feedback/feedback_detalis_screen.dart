import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class FeedbackDetalisScreen extends StatefulWidget {
  final FeedBackType feedBackType;
  final RewardsType? rewardsType;
  const FeedbackDetalisScreen({
    super.key,
    required this.feedBackType,
    this.rewardsType,
  });

  @override
  State<FeedbackDetalisScreen> createState() => _FeedbackDetalisScreenState();
}

class _FeedbackDetalisScreenState extends State<FeedbackDetalisScreen> {
  (String, String, String, Widget) _getFeedbackInfo(BuildContext context) {
    switch (widget.feedBackType) {
      case FeedBackType.alarm:
        return (
          "اندار نهائي",
          MyIcons.alarmIcon,
          context.appLocalization.alarmText,
          AlarmBubble(),
        );
      case FeedBackType.rewards:
        if (widget.rewardsType == RewardsType.incentive) {
          return (
            context.appLocalization.incentives,
            MyIcons.favIcon,
            context.appLocalization.incentiveText,
            IncentiveBubble(),
          );
        } else {
          return (
            context.appLocalization.requestForExpenseAllowance,
            MyIcons.allowanceIcon,
            "",
            AllowanceBubble(),
          );
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    final feedback = _getFeedbackInfo(context);
    return Scaffold(
      appBar: AppBar(title: Text(feedback.$1)),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          OrderHeader(
            headerHeight: 205,
            containerHeight: 175,
            icon: feedback.$2,
            child: feedback.$4,
          ),
          if (widget.feedBackType == FeedBackType.rewards && widget.rewardsType == RewardsType.allowance)
            const OrderDetalisCard(),
          if (widget.rewardsType == RewardsType.incentive || widget.feedBackType == FeedBackType.alarm)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: WidgetTitle(
                    title: feedback.$3,
                    child: SharedContainer(
                      child: Text(
                        "هذا النص مثال لنص يمكن ان يستبدل",
                        style: TextStyle(
                          color: context.colorPalette.black,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
                WidgetTitle(
                  title: context.appLocalization.attachedDocuments,
                  child: SharedContainer(
                    child: Text(
                      "لا يوجد",
                      style: TextStyle(
                        color: context.colorPalette.black,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
