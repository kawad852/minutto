import '../../shared.dart';

class InfoChip extends StatelessWidget {
  final IconData icon;
  final String labelText;
  final Color? color;

  const InfoChip({
    super.key,
    required this.icon,
    required this.labelText,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: color ?? context.colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(kRadiusPrimary),
      ),
      child: Row(
        children: [
          Icon(icon, size: 14),
          SizedBox(width: 4),
          Text(labelText, style: context.textTheme.labelSmall),
        ],
      ),
    );
  }
}
