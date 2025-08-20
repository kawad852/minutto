import 'package:shared/shared.dart';

class BestSellerChip extends StatelessWidget {
  const BestSellerChip({super.key});

  @override
  Widget build(BuildContext context) {
    return LabelChip(
      icon: FontAwesomeIcons.crown,
      label: context.appLocalization.bestSeller,
      color: context.colorScheme.secondary,
    );
  }
}
