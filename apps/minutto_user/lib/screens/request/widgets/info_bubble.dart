import 'package:shared/shared.dart';

class InfoBubble extends StatelessWidget {
  final String title, value;
  const InfoBubble({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            color: context.colorPalette.blue26,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          spacing: 5,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: context.colorPalette.white80,
                fontSize: 16,
              ),
            ),
            Text(
              value,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: context.colorPalette.white80,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
