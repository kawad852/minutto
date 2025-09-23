import 'package:shared/shared.dart';

class AttachmentEditor extends StatefulWidget {
  final void Function(List<XFile> files) onChanged;
  final List<Object> files;
  final WidgetBuilder? child;

  const AttachmentEditor({
    super.key,
    required this.onChanged,
    required this.files,
    this.child,
  });

  @override
  State<AttachmentEditor> createState() => _AttachmentEditorState();
}

class _AttachmentEditorState extends State<AttachmentEditor> {
  final List<Object> _files = [];

  Future<void> _pickFiles(BuildContext context) async {
    try {
      AppOverlayLoader.fakeLoading();
      final result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['jpg', 'jpeg', 'png', 'pdf'],
      );
      if (result != null && result.files.isNotEmpty) {
        final files = result.xFiles;
        setState(() {
          _files.addAll(files);
        });
        widget.onChanged(files);
      }
    } catch (e) {
      debugPrint("pickFileError:: $e");
    }
  }

  @override
  void initState() {
    super.initState();
    _files.addAll(widget.files);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        if (widget.child != null)
          GestureDetector(
            onTap: () {
              _pickFiles(context);
            },
            child: widget.child!(context),
          )
        else
          CustomTextField.clickable(
            key: ValueKey(_files.length),
            onTap: () => _pickFiles(context),
            labelText: context.appLocalization.attachFile,
            suffixIcon: CustomSvg(MyIcons.add),
            required: false,
            validator: (context, value) {
              if (_files.isEmpty) {
                return context.appLocalization.requiredField;
              }
              return null;
            },
          ),
        SingleChildScrollView(
          child: Row(
            spacing: 5,
            children: _files.map((e) {
              return AttachmentBubble(file: e);
            }).toList(),
          ),
        ),
      ],
    );
  }
}
