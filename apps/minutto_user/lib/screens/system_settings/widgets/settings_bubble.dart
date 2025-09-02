import 'package:shared/shared.dart';

class SettingsBubble extends StatelessWidget {
  final String icon, title;
  final void Function() onTap;
  const SettingsBubble({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        spacing: 15,
        children: [
          CustomSvg(icon),
          Expanded(
            child: Text(
              title,
              overflow: TextOverflow.ellipsis,
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
