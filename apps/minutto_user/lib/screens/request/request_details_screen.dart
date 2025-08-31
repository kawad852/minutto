import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class RequestDetailsScreen extends StatefulWidget {
  final String collection;
  final RequestModel request;

  const RequestDetailsScreen({
    super.key,
    required this.collection,
    required this.request,
  });

  @override
  State<RequestDetailsScreen> createState() => _RequestDetailsScreenState();
}

class _RequestDetailsScreenState extends State<RequestDetailsScreen> {
  RequestModel get request => widget.request;
  String get _collection => widget.collection;
  bool get _isVacations => _collection == MyCollections.vacations;
  bool get _isLeaves => _collection == MyCollections.leaves;
  bool get _isSalaryAdvances => _collection == MyCollections.salaryAdvances;
  bool get _isOvertimes => _collection == MyCollections.overtimes;

  @override
  Widget build(BuildContext context) {
    final info = _collection.info(context);
    final statusInfo = request.statusInfo(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(info.inputTitle),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Container(
          padding: const EdgeInsetsDirectional.all(10),
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: context.colorPalette.greyEAE),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            spacing: 15,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                spacing: 10,
                children: [
                  const CustomSvg(MyIcons.note),
                  Expanded(
                    child: Text(
                      "${info.dateTitle}: ${"${request.fromDate!.defaultFormat} - ${request.toDate!.defaultFormat}"}",
                      style: TextStyle(
                        color: context.colorPalette.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              DetailsCard(
                child: Column(
                  spacing: 15,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DetailsInfo(
                      title: context.appLocalization.requestType,
                      value: request.reasonLabel(context),
                    ),
                    if (request.fromHour != null && request.toHour != null) ...[
                      DetailsInfo(
                        title: context.appLocalization.fromHour,
                        value: "05:00 PM",
                      ),
                      DetailsInfo(
                        title: context.appLocalization.toHour,
                        value: "05:00 PM",
                      ),
                    ],
                    DetailsInfo(
                      title: context.appLocalization.officialReplied,
                      value: statusInfo.$1,
                      valueColor: statusInfo.$2,
                    ),
                  ],
                ),
              ),
              // DetailsCard(
              //   child: Column(
              //     spacing: 15,
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Text(
              //         context.appLocalization.requestType,
              //         style: TextStyle(
              //           color: context.colorPalette.grey667,
              //           fontSize: 15,
              //         ),
              //       ),
              //       Text(
              //         "وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف ",
              //         style: TextStyle(
              //           color: context.colorPalette.blue091,
              //           fontSize: 15,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              if (request.attachments.isNotEmpty)
                WidgetTitle(
                  title: context.appLocalization.attachedDocuments,
                  child: DetailsCard(
                    child: SingleChildScrollView(
                      child: Row(
                        children: request.attachments
                            .map((e) {
                              return AttachmentBubble(file: e);
                            })
                            .separator(SizedBox(width: 5))
                            .toList(),
                      ),
                    ),
                    // child: Row(
                    //   spacing: 10,
                    //   children: [
                    //     CustomSvg(
                    //       MyIcons.attachIcon,
                    //       color: context.colorPalette.black,
                    //     ),
                    //     Expanded(
                    //       child: Column(
                    //         spacing: 5,
                    //         crossAxisAlignment: CrossAxisAlignment.start,
                    //         children: [
                    //           Text(
                    //             "Filename.Jpg",
                    //             overflow: TextOverflow.ellipsis,
                    //             style: TextStyle(
                    //               color: context.colorPalette.black,
                    //               fontSize: 14,
                    //               fontWeight: FontWeight.bold,
                    //             ),
                    //           ),
                    //           Text(
                    //             "276,95 KB",
                    //             overflow: TextOverflow.ellipsis,
                    //             style: TextStyle(
                    //               color: context.colorPalette.grey8C8,
                    //               fontSize: 12,
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //   ],
                    // ),
                  ),
                ),
              if (request.adminNotes != null)
                DetailsCard(
                  child: Column(
                    spacing: 10,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        context.appLocalization.officialNotes,
                        style: TextStyle(
                          color: context.colorPalette.grey667,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        request.adminNotes!,
                        style: TextStyle(
                          color: context.colorPalette.blue091,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
