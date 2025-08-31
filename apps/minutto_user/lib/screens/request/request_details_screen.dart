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

  @override
  Widget build(BuildContext context) {
    final info = _collection.info(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(info.inputTitle),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsetsDirectional.only(
              top: 10,
              bottom: 40,
              start: 10,
              end: 10,
            ),
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
                        "${context.appLocalization.leaveDate} : 25 أغسطس 2025",
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
                        value: "مغادرة مرضية",
                      ),
                      DetailsInfo(
                        title: context.appLocalization.fromHour,
                        value: "05:00 PM",
                      ),
                      DetailsInfo(
                        title: context.appLocalization.toHour,
                        value: "05:00 PM",
                      ),
                      DetailsInfo(
                        title: context.appLocalization.officialReplied,
                        value: "مقبول",
                        valueColor: context.colorPalette.green19B,
                      ),
                    ],
                  ),
                ),
                DetailsCard(
                  child: Column(
                    spacing: 15,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        context.appLocalization.requestType,
                        style: TextStyle(
                          color: context.colorPalette.grey667,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف ",
                        style: TextStyle(
                          color: context.colorPalette.blue091,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                WidgetTitle(
                  title: context.appLocalization.attachedDocuments,
                  child: DetailsCard(
                    child: Row(
                      spacing: 10,
                      children: [
                        CustomSvg(
                          MyIcons.attachIcon,
                          color: context.colorPalette.black,
                        ),
                        Expanded(
                          child: Column(
                            spacing: 5,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Filename.Jpg",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: context.colorPalette.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "276,95 KB",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: context.colorPalette.grey8C8,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
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
                        "تم تحويلها إلى حساب البنك",
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
        ],
      ),
    );
  }
}
