import 'package:shared/shared.dart';

class FacilityBubble extends StatelessWidget {
  final String title;
  final String? icon;
  final void Function() onTap;
  final int? flex;
  const FacilityBubble({
    super.key,
    required this.title,
    this.icon,
    required this.onTap,
    this.flex,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex ?? 1,
      child: Column(
        spacing: 10,
        children: [
          GestureDetector(
            onTap: onTap,
            child: CustomSvg(icon ?? MyIcons.manage),
          ),
          SizedBox(
            height: 45,
            child: Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: context.colorPalette.blue091,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
