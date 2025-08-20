import 'package:shared/shared.dart';

class FavoriteButton extends StatelessWidget {
  final String id;
  final String type;
  final bool small;
  final Color? backgroundColor;
  final bool fromFavorites;

  const FavoriteButton({
    super.key,
    required this.id,
    required this.type,
    this.small = false,
    this.backgroundColor,
    this.fromFavorites = false,
  });

  @override
  Widget build(BuildContext context) {
    void toggle(bool inFav) {
      GuestHelper.openSheet(
        context,
        action: () {
          context.userProvider.toggleFavorite(
            context,
            inFav,
            id: id,
            type: type,
            fromFavorites: fromFavorites,
          );
        },
      );
    }

    return Selector<UserModel, List<String>>(
      selector: (context, provider) => provider.favoriteIds,
      builder: (context, favoriteIds, _) {
        final inFav = favoriteIds.contains(id);
        final icon = inFav ? FontAwesomeIcons.solidHeart : FontAwesomeIcons.lightHeart;
        final color = inFav ? context.colorScheme.error : null;
        if (small) {
          return MaterialButton(
            onPressed: () => toggle(inFav),
            minWidth: 0,
            color: backgroundColor,
            padding: EdgeInsets.all(2),
            height: 0,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            shape: CircleBorder(),
            child: Icon(icon, size: 18, color: color),
          );
        }
        return IconButton(
          onPressed: () => toggle(inFav),
          icon: Icon(icon, color: color),
          style: IconButton.styleFrom(backgroundColor: backgroundColor),
        );
      },
    );
  }
}
