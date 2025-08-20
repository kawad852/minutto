import '../../shared.dart';

class ProviderChips extends StatelessWidget {
  final EdgeInsetsGeometry? padding;

  const ProviderChips({super.key, this.padding = EdgeInsets.zero});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: padding,
      child: Row(
        children: List.generate(4, (index) {
          return InfoChip(icon: Icons.access_alarm, labelText: "Delivery");
        }).separator(SizedBox(width: 6)).toList(),
      ),
    );
  }
}
