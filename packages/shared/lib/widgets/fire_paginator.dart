import '../../shared.dart';

class FirePaginator<T> extends StatefulWidget {
  final Query<T> query;
  final int pageSize;
  final dynamic Function(BuildContext context, FirePaginatorModel<T> snapshot) builder;
  final bool isSliver;
  final Function()? onLoading;
  final Future Function(List<QueryDocumentSnapshot<T>> docs)? secondaryQueryBuilder;

  const FirePaginator({
    super.key,
    required this.query,
    required this.builder,
    this.pageSize = 10,
    this.isSliver = false,
    this.onLoading,
    this.secondaryQueryBuilder,
  });

  @override
  State<FirePaginator<T>> createState() => _FirePaginatorState<T>();
}

class _FirePaginatorState<T> extends State<FirePaginator<T>> {
  late Future<QuerySnapshot<T>> _future;
  late FirePaginatorModel<T> _firePaginator;

  int get _pageSize => widget.pageSize;
  Query<T> get _query => widget.query.limit(_pageSize);

  void _fetch() async {
    _future = ApiService.build<QuerySnapshot<T>>(
      callBack: () async {
        _firePaginator = FirePaginatorModel(
          docs: [],
          fetchMore: _fetchMore,
          fetch: _fetch,
          hasMore: true,
          isFetchingMore: false,
          toggleLoader: () => _buildLoadMoreIndicator(),
        );
        return _query.get().then((value) async {
          _firePaginator.docs = value.docs;
          if (widget.secondaryQueryBuilder != null && _firePaginator.docs.isNotEmpty) {
            await widget.secondaryQueryBuilder!(value.docs);
          }
          return value;
        });
      },
    );
  }

  void _fetchMore() async {
    ApiService.build(
      callBack: () async {
        _firePaginator.isFetchingMore = true;
        final querySnapshot = await _query.startAfterDocument(_firePaginator.docs.last).get().then((
          value,
        ) async {
          if (widget.secondaryQueryBuilder != null && _firePaginator.docs.isNotEmpty) {
            await widget.secondaryQueryBuilder!(value.docs);
          }
          return value;
        });
        Future.microtask(() {
          setState(() {
            _firePaginator.docs.addAll(querySnapshot.docs);
          });
          if (querySnapshot.docs.length < _pageSize) {
            _firePaginator.hasMore = false;
          }
          _firePaginator.isFetchingMore = false;
        });
      },
    );
  }

  Widget? _buildLoadMoreIndicator() {
    if (_firePaginator.isFetchingMore && _firePaginator.docs.length > _pageSize) {
      return Padding(padding: const EdgeInsets.symmetric(vertical: 20), child: BaseLoader());
    }
    return null;
  }

  @override
  void initState() {
    super.initState();
    _fetch();
  }

  @override
  Widget build(BuildContext context) {
    return BlitzBuilder.future(
      future: _future,
      // onLoading: widget.onLoading,
      onComplete: (context, snapshot) {
        return widget.builder(context, _firePaginator);
      },
    );
  }
}
