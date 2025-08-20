import '../shared.dart';

class SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;

  SliverAppBarDelegate(this.tabBar);

  @override
  double get minExtent => tabBar.preferredSize.height;
  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Material(
      color: overlapsContent
          ? context.colorScheme.surfaceContainerHighest
          : context.colorScheme.surface,
      child: tabBar,
    );
  }

  @override
  bool shouldRebuild(covariant SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
