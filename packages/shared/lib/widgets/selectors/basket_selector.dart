import '../../shared.dart';

class BasketSelector extends StatelessWidget {
  final Widget Function(BuildContext, List<BasketModel>) builder;

  const BasketSelector({super.key, required this.builder});

  @override
  Widget build(BuildContext context) {
    return Selector<List<BasketModel>, List<BasketModel>>(
      selector: (context, provider) => provider,
      builder: (context, basket, _) {
        return builder(context, basket);
      },
    );
  }
}
