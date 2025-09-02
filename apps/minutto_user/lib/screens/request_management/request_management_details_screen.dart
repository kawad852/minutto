import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class RequestManagementDetailsScreen extends StatefulWidget {
  const RequestManagementDetailsScreen({super.key});

  @override
  State<RequestManagementDetailsScreen> createState() =>
      _RequestManagementDetailsScreenState();
}

class _RequestManagementDetailsScreenState
    extends State<RequestManagementDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.appLocalization.requestDetails),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
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
          AdvanceContainer(
            child: Column(
              spacing: 12,
              children: [
                RequestManageDetails(
                  title: context.appLocalization.branch,
                  value: "عمان",
                ),
                RequestManageDetails(
                  title: context.appLocalization.department,
                  value: "التصميم",
                ),
                RequestManageDetails(
                  title: context.appLocalization.employeeName,
                  value: "أحمد حامد",
                ),
                RequestManageDetails(
                  title: context.appLocalization.valuee,
                  value: "320 JOD",
                ),
                RequestManageDetails(
                  title: context.appLocalization.remainingBalanceAdvance,
                  value: "320 JOD",
                ),
              ],
            ),
          ),
          AdvanceContainer(
            child: Column(
              spacing: 15,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.appLocalization.notes,
                  style: TextStyle(
                    color: context.colorPalette.grey667,
                    fontSize: 14,
                  ),
                ),
                Text(
                  "لا توجد",
                  style: TextStyle(
                    color: context.colorPalette.black,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          Text(
            context.appLocalization.attachedDocuments,
            style: TextStyle(
              color: context.colorPalette.black,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          AdvanceContainer(
            child: Text(
              "لا توجد",
              style: TextStyle(
                color: context.colorPalette.black,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
