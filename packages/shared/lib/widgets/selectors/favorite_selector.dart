import '../../shared.dart';

class FavoriteSelector extends StatelessWidget {
  final String id;
  final Widget Function(BuildContext, bool inFav) builder;

  const FavoriteSelector({super.key, required this.builder, required this.id});

  @override
  Widget build(BuildContext context) {
    return Selector<UserModel, List<String>>(
      selector: (context, provider) => provider.favoriteIds,
      builder: (context, favoriteIds, _) {
        final inFav = favoriteIds.contains(id);
        return builder(context, inFav);
      },
    );
  }
}
