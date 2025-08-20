import 'package:shared/shared.dart';

class OutOfStockTile extends StatelessWidget {
  final Widget? trailing;

  const OutOfStockTile({super.key, this.trailing});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: context.colorScheme.tertiaryContainer,
      leading: Icon(Icons.info),
      dense: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kRadiusPrimary),
      ),
      title: Text(context.appLocalization.outOfStockTitle),
      subtitle: Text(context.appLocalization.outOfStockBody),
      trailing: trailing,
    );
  }
}
