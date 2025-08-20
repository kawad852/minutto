import '../../shared.dart';

class HeaderTile extends StatelessWidget {
  final String titleText;
  final Widget? trailing;
  final EdgeInsetsGeometry? contentPadding;
  final double? minTileHeight;
  final Widget? subTitle;

  const HeaderTile({
    super.key,
    required this.titleText,
    this.trailing,
    this.contentPadding,
    this.minTileHeight,
    this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      titleTextStyle: context.textTheme.titleMedium,
      contentPadding: contentPadding,
      minTileHeight: minTileHeight,
      title: Text(titleText),
      subtitle: subTitle,
      trailing: trailing,
    );
  }
}
