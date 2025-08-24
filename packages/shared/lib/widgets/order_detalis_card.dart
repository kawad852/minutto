import 'package:shared/shared.dart';

class OrderDetalisCard extends StatelessWidget {
  const OrderDetalisCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: WidgetTitle(
            title: context.appLocalization.notes,
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
              style: TextStyle(color: context.colorPalette.black, fontSize: 15),
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
                "مقبول",
                style: TextStyle(
                  color: context.colorPalette.green47A,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ),
        WidgetTitle(
          title: context.appLocalization.officialNotes,
          child: SharedContainer(
            child: Text(
              "لا يوجد",
              style: TextStyle(color: context.colorPalette.black, fontSize: 15),
            ),
          ),
        ),
      ],
    );
  }
}
