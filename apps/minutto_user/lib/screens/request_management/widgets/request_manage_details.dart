import 'package:shared/shared.dart';

class RequestManageDetails extends StatelessWidget {
  final String title, value;
  const RequestManageDetails({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: TextStyle(
              color: context.colorPalette.grey667,
              fontSize: 16,
            ),
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: TextStyle(
              color: context.colorPalette.black,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
