import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class FeedbackScreen extends StatefulWidget {
  final FeedBackType feedBackType;
  const FeedbackScreen({super.key, required this.feedBackType});

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.feedBackType == FeedBackType.alarm
              ? context.appLocalization.alarms
              : context.appLocalization.incentivesRequests,
        ),
      ),
      bottomNavigationBar: widget.feedBackType == FeedBackType.rewards
          ? BottomAppBar(
              child: StretchedButton(
                onPressed: () {
                  context.navigate((context) => const FeedbackInputScreen());
                },
                child: Text(
                  context.appLocalization.requestForExpenseAllowance,
                  style: TextStyle(
                    color: context.colorPalette.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          : null,
      body: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(height: 15),
        itemCount: 5,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        itemBuilder: (context, index) {
          return FeedBackCard(feedBackType: widget.feedBackType);
        },
      ),
    );
  }
}
