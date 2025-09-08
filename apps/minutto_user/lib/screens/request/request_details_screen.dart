import 'package:minutto_user/minutto_user.dart';
import 'package:shared/shared.dart';

class RequestDetailsScreen extends StatefulWidget {
  final String collection;
  final RequestModel? request;
  final String? id;

  const RequestDetailsScreen({
    super.key,
    required this.collection,
    this.request,
    this.id,
  });

  @override
  State<RequestDetailsScreen> createState() => _RequestDetailsScreenState();
}

class _RequestDetailsScreenState extends State<RequestDetailsScreen> {
  late Stream<RequestModel> _stream;
  String get _collection => widget.collection;
  bool get _isVacations => _collection == MyCollections.vacations;
  bool get _isLeaves => _collection == MyCollections.leaves;
  bool get _isSalaryAdvances => _collection == MyCollections.salaryAdvances;
  bool get _isOvertimes => _collection == MyCollections.overtimes;

  void _initialize() {
    if (widget.request != null) {
      _stream = Stream.value(widget.request!);
    } else {
      _stream = FirebaseFirestore.instance
          .collection(_collection)
          .requestConvertor
          .doc(widget.id)
          .snapshots()
          .map((e) => e.data()!);
    }
  }

  @override
  void initState() {
    super.initState();
    _initialize();
  }

  @override
  Widget build(BuildContext context) {
    final info = _collection.info(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(context.appLocalization.requestDetails),
      ),
      body: BlitzBuilder.stream(
        stream: _stream,
        onComplete: (context, snapshot) {
          final request = snapshot.data ?? RequestModel(createdAt: DateTime.now());
          final statusInfo = request.statusInfo(context);
          return SingleChildScrollView(
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
                          "${context.appLocalization.requestDate}: ${request.createdAt.defaultFormat}",
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
                        if (request.fromDate != null && request.toDate != null)
                          DetailsInfo(
                            title: context.appLocalization.date,
                            value:
                                "${request.fromDate!.defaultFormat} - ${request.toDate!.defaultFormat}",
                          ),

                        if (request.reason != null)
                          DetailsInfo(
                            title: context.appLocalization.requestType,
                            value: request.reasonLabel(context),
                          ),
                        if (request.fromHour != null && request.toHour != null) ...[
                          DetailsInfo(
                            title: context.appLocalization.fromHour,
                            value: request.fromHour!,
                          ),
                          DetailsInfo(
                            title: context.appLocalization.toHour,
                            value: request.toHour!,
                          ),
                        ],
                        if (request.amount != 0)
                          DetailsInfo(
                            title: context.appLocalization.amount,
                            value: request.amount.toStringAsFixed(2),
                          ),
                        DetailsInfo(
                          title: context.appLocalization.officialReplied,
                          value: statusInfo.$1,
                          valueColor: statusInfo.$2,
                        ),
                      ],
                    ),
                  ),

                  ///Notes
                  if (request.notes != null)
                    DetailsCard(
                      child: Column(
                        spacing: 15,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            context.appLocalization.notes,
                            style: TextStyle(
                              color: context.colorPalette.grey667,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            request.notes!,
                            style: TextStyle(
                              color: context.colorPalette.blue091,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
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
          );
        },
      ),
    );
  }
}
