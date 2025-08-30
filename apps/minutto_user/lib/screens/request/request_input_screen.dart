import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class RequestInputScreen extends StatefulWidget {
  const RequestInputScreen({super.key});

  @override
  State<RequestInputScreen> createState() => _RequestInputScreenState();
}

class _RequestInputScreenState extends State<RequestInputScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.appLocalization.vacationRequest),
      ),
      bottomNavigationBar: BottomButton(
        onPressed: () {},
        title: context.appLocalization.submitRequest,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        children: [
          WidgetTitle(
            title: context.appLocalization.debtValue,
            child: CustomTextField.text(onChanged: (value) {}),
          ),
          const SizedBox(height: 15),
          WidgetTitle(
            title: context.appLocalization.overtimeHistory,
            child: DateEditor(
              value: DateTime.now(),
              suffixIcon: CustomSvg(
                MyIcons.calander,
                color: context.colorPalette.blue091,
              ),
              onChanged: (value) => {},
            ),
          ),
          const SizedBox(height: 15),
          WidgetTitle(
            title: context.appLocalization.vacationType,
            child: DropDownEditor<String>(
              items: [
                DropdownMenuItem(value: 'سوريا', child: Text('سوريا')),
                DropdownMenuItem(value: 'الاردن', child: Text('الاردن')),
              ],
              onChanged: (value) {},
              title: context.appLocalization.choose,
              value: null,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: WidgetTitle(
              title: context.appLocalization.requestType,
              child: DropDownEditor<String>(
                items: [
                  DropdownMenuItem(value: 'سوريا', child: Text('سوريا')),
                  DropdownMenuItem(value: 'الاردن', child: Text('الاردن')),
                ],
                onChanged: (value) {},
                title: context.appLocalization.choose,
                value: null,
              ),
            ),
          ),
          Row(
            spacing: 10,
            children: [
              Expanded(
                child: WidgetTitle(
                  title: context.appLocalization.fromHour,
                  child: DayTimeEditor(
                    initialValue: "2:00",
                    onChanged: (value) => {},
                  ),
                ),
              ),
              Expanded(
                child: WidgetTitle(
                  title: context.appLocalization.toHour,
                  child: DayTimeEditor(
                    initialValue: "2:00",
                    onChanged: (value) {},
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              spacing: 10,
              children: [
                Expanded(
                  child: WidgetTitle(
                    title: context.appLocalization.startDate,
                    child: DateEditor(
                      onChanged: (value) {},
                      suffixIcon: CustomSvg(
                        MyIcons.calander,
                        color: context.colorPalette.blue091,
                      ),
                      value: DateTime.now(),
                    ),
                  ),
                ),
                Expanded(
                  child: WidgetTitle(
                    title: context.appLocalization.endDate,
                    child: DateEditor(
                      onChanged: (value) {},
                      suffixIcon: CustomSvg(
                        MyIcons.calander,
                        color: context.colorPalette.blue091,
                      ),
                      value: DateTime.now(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          WidgetTitle(
            title: context.appLocalization.note,
            child: CustomTextField.text(
              onChanged: (value) {},
              hintText: context.appLocalization.writeNote,
              maxLines: 4,
            ),
          ),
          const SizedBox(height: 15),
          WidgetTitle(
            title: context.appLocalization.attachDocument,
            miniTitle: " (${context.appLocalization.attachDoucOrPdf})",
            child: AttachCard(),
          ),
        ],
      ),
    );
  }
}
