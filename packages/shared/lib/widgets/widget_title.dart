import 'package:shared/shared.dart';

class WidgetTitle extends StatelessWidget {
  final String title;
  final Widget child;
  final EdgeInsetsGeometry padding;

  const WidgetTitle({
    super.key,
    required this.title,
    required this.child,
    this.padding = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: padding,
          child: Text(
            title,
            style: context.textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(height: 4),
        child,
      ],
    );
  }
}
