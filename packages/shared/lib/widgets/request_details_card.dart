import 'package:shared/shared.dart';

class RequestDetailsCard extends StatelessWidget {
  final RequestModel request;

  const RequestDetailsCard({
    super.key,
    required this.request,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (request.notes != null)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: WidgetTitle(
              title: context.appLocalization.notes,
              child: SharedContainer(
                child: Text(
                  request.notes!,
                  style: TextStyle(
                    color: context.colorPalette.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ),
        if (request.attachments.isNotEmpty)
          WidgetTitle(
            title: context.appLocalization.attachedDocuments,
            child: SharedContainer(
              child: SingleChildScrollView(
                child: Row(
                  children: request.attachments.map((e) {
                    return AttachmentBubble(file: e);
                  }).toList(),
                ),
              ),
            ),
          ),
        CustomLine(
          isEnd: true,
          color: context.colorPalette.black,
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 25),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: WidgetTitle(
            title: context.appLocalization.officialReplied,
            child: SharedContainer(
              child: Text(
                StatusEnum.label(context, request.status),
                style: TextStyle(
                  color: context.colorPalette.green47A,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ),
        if (request.adminNotes != null)
          WidgetTitle(
            title: context.appLocalization.officialNotes,
            child: SharedContainer(
              child: Text(
                request.adminNotes!,
                style: TextStyle(color: context.colorPalette.black, fontSize: 15),
              ),
            ),
          ),
      ],
    );
  }
}
