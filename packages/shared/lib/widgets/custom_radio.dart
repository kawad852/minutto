import 'package:easy_radio/easy_radio.dart';
import 'package:shared/shared.dart';

class CustomRadio<T> extends StatelessWidget {
  final T value;
  final T groupValue;
  final String title;
  final ValueChanged<T?> onChanged;
  const CustomRadio({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 7),
      child: Row(
        children: [
          EasyRadio<T>(
            value: value,
            dotColor: context.colorPalette.blueB2D,
            activeFillColor: Colors.transparent,
            activeBorderColor: context.colorPalette.greyEAE,
            inactiveBorderColor: context.colorPalette.greyEAE,
            inactiveFillColor: Colors.transparent,
            dotRadius: 8,
            groupValue: groupValue,
            radius: 12,
            onChanged: onChanged,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsetsDirectional.only(start: 8),
              child: Text(
                title,
                style: TextStyle(
                  color: context.colorPalette.grey8C8,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
