import 'package:shared/shared.dart';

class OrderForm extends StatelessWidget {
  final ValueChanged<String?> onNotesChanged;

  const OrderForm({super.key, required this.onNotesChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WidgetTitle(
          title: context.appLocalization.notes,
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: CustomTextField.text(onChanged: onNotesChanged, maxLines: 5),
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
          context.appLocalization.attachDoucOrPdf,
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
                    style: TextStyle(color: context.colorPalette.black, fontSize: 16),
                  ),
                ),
                CustomSvg(MyIcons.add),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
