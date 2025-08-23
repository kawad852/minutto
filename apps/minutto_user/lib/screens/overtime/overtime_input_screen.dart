import 'package:shared/shared.dart';

class OvertimeInputScreen extends StatefulWidget {
  const OvertimeInputScreen({super.key});

  @override
  State<OvertimeInputScreen> createState() => _OvertimeInputScreenState();
}

class _OvertimeInputScreenState extends State<OvertimeInputScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.appLocalization.overtime)),
      bottomNavigationBar: BottomAppBar(
        child: StretchedButton(
          onPressed: () {},
          child: Text(
            context.appLocalization.send,
            style: TextStyle(
              color: context.colorPalette.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          WidgetTitle(
            title: context.appLocalization.overtimeHistory,
            padding: const EdgeInsets.only(bottom: 5),
            child: CustomTextField.text(onChanged: (value) {}),
          ),
          Row(
            children: [
              Expanded(
                child: WidgetTitle(
                  title: context.appLocalization.fromHour,
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: CustomTextField.text(onChanged: (value) {}),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: WidgetTitle(
                  title: context.appLocalization.toHour,
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: CustomTextField.text(onChanged: (value) {}),
                ),
              ),
            ],
          ),
          WidgetTitle(
            title: context.appLocalization.notes,
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: CustomTextField.text(onChanged: (value) {}, maxLines: 5),
          ),
          const SizedBox(height: 7),
          Text(
            context.appLocalization.attachDocument,
            style: TextStyle(
              color: context.colorPalette.black,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            context.appLocalization.medicalCondition,
            style: TextStyle(
              color: context.colorPalette.grey8F8,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: double.infinity,
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: context.colorPalette.greyF5F,
                borderRadius: BorderRadius.circular(kRadiusSecondary),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      context.appLocalization.attachFile,
                      style: TextStyle(
                        color: context.colorPalette.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  CustomSvg(MyIcons.add),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
