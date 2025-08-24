import 'package:shared/shared.dart';

class WidgetTitle extends StatelessWidget {
  final String title;
  final String? miniTitle;
  final Widget child;
  final EdgeInsetsGeometry padding;

  const WidgetTitle({
    super.key,
    required this.title,
    required this.child,
    this.miniTitle,
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
          child: Row(
            children: [
              Text(
                title,
                style: context.textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w500),
              ),
              if (miniTitle != null)
               Text(
                miniTitle!,
                style: TextStyle(
                  color: context.colorPalette.grey8F8,
                  fontSize: 12,
                ),
               )
            ],
          ),
        ),
        const SizedBox(height: 4),
        child,
      ],
    );
  }
}
