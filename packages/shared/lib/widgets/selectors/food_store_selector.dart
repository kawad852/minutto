import '../../shared.dart';

class FoodStoreSelector extends StatelessWidget {
  final Widget Function(BuildContext, FoodStoreModel store)? builder;

  const FoodStoreSelector({super.key, required this.builder});

  @override
  Widget build(BuildContext context) {
    return Selector<FoodStoreModel, FoodStoreModel>(
      selector: (context, provider) => provider,
      builder: (context, store, _) {
        return builder!(context, store);
      },
    );
  }
}
