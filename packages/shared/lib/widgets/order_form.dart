import 'package:shared/shared.dart';

class OrderForm extends StatelessWidget {
  final ValueChanged<String?> onNotesChanged;
  final List<AttachmentModel> attachments;
  final ValueChanged<List<XFile>> onAttachmentChanged;

  const OrderForm({
    super.key,
    required this.onNotesChanged,
    required this.attachments,
    required this.onAttachmentChanged,
  });

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
        AttachmentEditor(files: attachments, onChanged: onAttachmentChanged),
      ],
    );
  }
}
