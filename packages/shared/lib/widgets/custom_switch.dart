import 'package:shared/shared.dart';

class CustomSwitch extends StatelessWidget {
  final void Function(bool) onChanged;
  const CustomSwitch({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: Switch(
        value: true,
        // activeThumbColor: context.colorPalette.white,
        activeTrackColor: context.colorPalette.blueB2D,
        onChanged: onChanged,
      ),
    );
  }
}
