import 'package:shared/shared.dart';

class ProfileInfo extends StatelessWidget {
  final void Function() onTap;
  final String icon, title;
  final Color? color;

  const ProfileInfo({
    super.key,
    required this.onTap,
    required this.icon,
    required this.title,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          CustomSvg(icon),
          const SizedBox(width: 17),
          Expanded(
            child: Text(
              title,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: color ?? context.colorPalette.black,
                fontSize: 16,
              ),
            ),
          ),
          Icon(Icons.arrow_forward_ios_rounded, size: 20),
        ],
      ),
    );
  }
}
