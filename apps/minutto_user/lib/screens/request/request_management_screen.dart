import 'package:minutto_user/minutto_user.dart';
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
                      (context) => const RequestsScreen(
                        collection: MyCollections.leaves,
                        showActions: true,
                      ),
                    );
                  },
                  title: context.appLocalization.leaveRequests,
                  collection: MyCollections.leaves,
                ),
                RequestManageInfo(
                  onTap: () {
                    context.navigate(
                      (context) => const RequestsScreen(
                        collection: MyCollections.vacations,
                        showActions: true,
                      ),
                    );
                  },
                  title: context.appLocalization.vacationRequests,
                  collection: MyCollections.vacations,
                ),
              ],
            ),
            Row(
              spacing: 10,
              children: [
                RequestManageInfo(
                  onTap: () {
                    context.navigate(
                      (context) => const RequestsScreen(
                        collection: MyCollections.salaryAdvances,
                        showActions: true,
                      ),
                    );
                  },
                  title: context.appLocalization.advances,
                  collection: MyCollections.salaryAdvances,
                ),
                RequestManageInfo(
                  onTap: () {
                    context.navigate(
                      (context) => const RequestsScreen(
                        collection: MyCollections.breaks,
                        showActions: true,
                      ),
                    );
                  },
                  title: context.appLocalization.breakRequests,
                  collection: MyCollections.breaks,
                ),
              ],
            ),
            Row(
              spacing: 10,
              children: [
                RequestManageInfo(
                  onTap: () {
                    context.navigate(
                      (context) => const RequestsScreen(
                        collection: MyCollections.incentives,
                        showActions: true,
                      ),
                    );
                  },
                  title: context.appLocalization.incentiveRequests,
                  collection: MyCollections.incentives,
                ),
                RequestManageInfo(
                  onTap: () {
                    context.navigate(
                      (context) => const RequestsScreen(
                        collection: MyCollections.overtimes,
                        showActions: true,
                      ),
                    );
                  },
                  title: context.appLocalization.overtimeRequests,
                  collection: MyCollections.overtimes,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
