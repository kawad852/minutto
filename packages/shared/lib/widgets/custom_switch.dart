import 'package:shared/shared.dart';

class CustomSwitch extends StatelessWidget {
  final bool value;
  final void Function(bool) onChanged;

  const CustomSwitch({
    super.key,
    required this.onChanged,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: Switch(
        value: value,
        // activeThumbColor: context.colorPalette.white,
        activeTrackColor: context.colorPalette.blueB2D,
        onChanged: onChanged,
      ),
    );
  }
}
