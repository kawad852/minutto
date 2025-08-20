import '../../shared.dart';

class HorizontalScrollBuilder extends StatelessWidget {
  final Widget Function(int index) builder;
  final int length;
  final EdgeInsetsGeometry? padding;

  const HorizontalScrollBuilder({
    super.key,
    required this.builder,
    required this.length,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: padding ?? EdgeInsets.symmetric(horizontal: kScreenMargin),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: List.generate(length, (index) {
          return builder(index);
        }).separator(SizedBox(width: 6)).toList(),
      ),
    );
  }
}
