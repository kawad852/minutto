import 'package:shared/shared.dart';

class ReplyDialog extends StatelessWidget {
  final ReplyType replyType;
  const ReplyDialog({super.key, required this.replyType});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 25),
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: Container(
        width: double.infinity,
        height: 300,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          children: [
            Text(
              replyType == ReplyType.accept
                  ? context.appLocalization.sureAcceptFile
                  : context.appLocalization.sureRejectFile,
              style: TextStyle(
                color: context.colorPalette.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              context.appLocalization.leaveResponse,
              style: TextStyle(
                color: context.colorPalette.grey8C8,
                fontSize: 14,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 30),
              child: CustomTextField.text(
                onChanged: (value) {},
                hintText: replyType == ReplyType.accept
                    ? context.appLocalization.writeNote
                    : context.appLocalization.reasonRejection,
                maxLines: 3,
              ),
            ),
            Row(
              spacing: 10,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      height: 48,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: replyType == ReplyType.accept
                            ? context.colorPalette.green19B
                            : context.colorPalette.redF95,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        replyType == ReplyType.accept
                            ? context.appLocalization.confirmAcceptance
                            : context.appLocalization.confirmRejection,
                        style: TextStyle(
                          color: context.colorPalette.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      height: 48,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(color: context.colorPalette.blue091),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        context.appLocalization.no,
                        style: TextStyle(
                          color: context.colorPalette.blue091,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
