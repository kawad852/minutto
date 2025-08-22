import 'package:shared/shared.dart';

class RequestCard extends StatelessWidget {
  final String title, value;
  const RequestCard({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        height: 93,
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        decoration: BoxDecoration(
          color: context.colorPalette.greyF7F,
          borderRadius: BorderRadius.circular(kRadiusSecondary),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              context.appLocalization.submitRequest,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: context.colorPalette.black2D2,
                fontSize: 16,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    value,
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: context.colorPalette.blue091,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    context.appLocalization.inMonth,
                    style: TextStyle(
                      color: context.colorPalette.grey8F8,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              title,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: context.colorPalette.redD42,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
