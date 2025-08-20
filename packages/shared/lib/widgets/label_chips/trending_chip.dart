import 'package:shared/shared.dart';

class TrendingChip extends StatelessWidget {
  const TrendingChip({super.key});

  @override
  Widget build(BuildContext context) {
    return LabelChip(
      icon: FontAwesomeIcons.bolt,
      label: context.appLocalization.trending,
      color: context.colorScheme.primary,
    );
  }
}
