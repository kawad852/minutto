import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class RequestManagementScreen extends StatefulWidget {
  const RequestManagementScreen({super.key});

  @override
  State<RequestManagementScreen> createState() => _RequestManagementScreenState();
}

class _RequestManagementScreenState extends State<RequestManagementScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.appLocalization.requests),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              spacing: 10,
              children: [
                RequestManageInfo(
                  onTap: () {
                    context.navigate(
                      (context) => const RequestsListScreen(),
                    );
                  },
                  title: context.appLocalization.leaveRequests,
                  value: "7",
                ),
                RequestManageInfo(
                  onTap: () {
                    context.navigate(
                      (context) => const RequestsListScreen(),
                    );
                  },
                  title: context.appLocalization.vacationRequests,
                  value: "7",
                ),
              ],
            ),
            Row(
              spacing: 10,
              children: [
                RequestManageInfo(
                  onTap: () {
                    context.navigate(
                      (context) => const AdvancesManagementScreen(),
                    );
                  },
                  title: context.appLocalization.advances,
                  value: "7",
                ),
                RequestManageInfo(
                  onTap: () {
                    context.navigate(
                      (context) => const RequestsListScreen(),
                    );
                  },
                  title: context.appLocalization.breakRequests,
                  value: "7",
                ),
              ],
            ),
            Row(
              spacing: 10,
              children: [
                RequestManageInfo(
                  onTap: () {
                    context.navigate(
                      (context) => const RequestsListScreen(),
                    );
                  },
                  title: context.appLocalization.incentiveRequests,
                  value: "7",
                ),
                RequestManageInfo(
                  onTap: () {
                    context.navigate(
                      (context) => const RequestsListScreen(),
                    );
                  },
                  title: context.appLocalization.overtimeRequests,
                  value: "7",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
