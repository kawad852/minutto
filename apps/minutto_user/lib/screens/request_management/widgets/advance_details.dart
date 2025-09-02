import 'package:shared/shared.dart';

class AdvanceDetails extends StatelessWidget {
  final String title, value;
  const AdvanceDetails({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        spacing: 5,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: context.colorPalette.grey667,
              fontSize: 14,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              color: context.colorPalette.black,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
