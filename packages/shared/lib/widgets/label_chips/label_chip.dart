import 'package:shared/shared.dart';

class LabelChip extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const LabelChip({super.key, required this.icon, required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    final color = this.color;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.20),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 4,
        children: [
          FaIcon(icon, size: 10, color: color),
          Text(label, style: context.textTheme.labelSmall!.copyWith(color: color)),
        ],
      ),
    );
  }
}
