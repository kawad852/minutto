import 'package:shared/shared.dart';

class RequestBubble extends StatelessWidget {
  final String title, value;
  const RequestBubble({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        height: 90,
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
        decoration: BoxDecoration(
          color: context.colorPalette.greyF9F,
          border: Border.all(color: context.colorPalette.greyEAE),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 8,
          children: [
            Text(
              "${context.appLocalization.submitRequest} $title",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: context.colorPalette.black2D2,
                fontSize: 14,
              ),
            ),
            Row(
              children: [
                Text(
                  value,
                  style: TextStyle(
                    color: context.colorPalette.blue091,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  context.appLocalization.inMonth,
                  style: TextStyle(
                    color: context.colorPalette.grey8F8,
                    fontSize: 12,
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
