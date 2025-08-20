import 'package:shared/shared.dart';

class BlitzBuilder<T> extends StatelessWidget {
  final Future<T>? _future;
  final Stream<T>? _stream;
  final Query<T>? _query;
  final bool forceLoadingForTesting;

  final T? initialData;

  final Function(BuildContext context, AsyncSnapshot<T?> snapshot)? _onComplete;
  final FirestoreQueryBuilderSnapshotBuilder<T>? _onQueryCompleted;
  final Widget Function(Object? error)? onError;
  final WidgetBuilder? onLoading;

  const BlitzBuilder._({
    super.key,
    Stream<T>? stream,
    Future<T>? future,
    Query<T>? query,
    FirestoreQueryBuilderSnapshotBuilder<T>? onQueryCompleted,
    dynamic Function(BuildContext, AsyncSnapshot<T?>)? onComplete,
    this.initialData,
    this.forceLoadingForTesting = false,
    this.onError,
    this.onLoading,
  }) : _stream = stream,
       _onComplete = onComplete,
       _future = future,
       _query = query,
       _onQueryCompleted = onQueryCompleted;

  factory BlitzBuilder.future({
    Key? key,
    required Future<T> future,
    T? initialData,
    required Function(BuildContext context, AsyncSnapshot<T?> snapshot) onComplete,
    bool forceLoadingForTesting = false,
  }) {
    return BlitzBuilder._(
      key: key,
      future: future,
      onComplete: onComplete,
      initialData: initialData,
      forceLoadingForTesting: forceLoadingForTesting,
    );
  }

  factory BlitzBuilder.stream({
    Key? key,
    required Stream<T> stream,
    T? initialData,
    required Function(BuildContext context, AsyncSnapshot<T?> snapshot) onComplete,
    Widget Function(Object? error)? onError,
    bool forceLoadingForTesting = false,
  }) {
    return BlitzBuilder._(
      key: key,
      initialData: initialData,
      stream: stream,
      onComplete: onComplete,
      onError: onError,
      forceLoadingForTesting: forceLoadingForTesting,
    );
  }

  factory BlitzBuilder.query({
    Key? key,
    required Query<T> query,
    required FirestoreQueryBuilderSnapshotBuilder<T> onComplete,
    WidgetBuilder? onLoading,
  }) {
    return BlitzBuilder._(
      key: key,
      query: query,
      onQueryCompleted: onComplete,
      onLoading: onLoading,
    );
  }

  Widget _buildSnapshot(BuildContext context, AsyncSnapshot<T?> snapshot) {
    if (snapshot.hasError) {
      if (onError != null) {
        return onError!(snapshot.error);
      } else {
        final hasScaffold = Scaffold.maybeOf(context) != null;
        final errorWidget = _buildErrorWidget(snapshot.error);
        if (hasScaffold) {
          return errorWidget;
        } else {
          return Scaffold(appBar: AppBar(), body: errorWidget);
        }
      }
    }

    final isLoading = initialData == null && snapshot.connectionState == ConnectionState.waiting;
    return _buildWidget(context, isLoading, child: _onComplete!(context, snapshot));
  }

  Widget _buildWidget(BuildContext context, bool isLoading, {required Widget child}) {
    if (onLoading != null) {
      return isLoading ? onLoading!(context) : child;
    } else {
      return Skeletonizer(enabled: forceLoadingForTesting ? true : isLoading, child: child);
    }
  }

  _buildErrorWidget(Object? error) {
    return AppErrorWidget(
      error: error,
      onRetry: () {
        // setState(() {
        //   _initialize();
        // });
      },
    );
  }

  Widget _buildScaffold({required Widget body}) {
    return Scaffold(appBar: AppBar(), body: body);
  }

  @override
  Widget build(BuildContext context) {
    if (_stream != null) {
      return StreamBuilder<T?>(stream: _stream, initialData: initialData, builder: _buildSnapshot);
    } else if (_future != null) {
      return FutureBuilder<T?>(future: _future, initialData: initialData, builder: _buildSnapshot);
    } else {
      return FirestoreQueryBuilder<T>(
        query: _query!,
        pageSize: 10,
        builder: (context, snapshot, child) {
          if (snapshot.hasError) {
            return const ServerErrorWidget();
          }

          final isLoading = snapshot.isFetching;

          return _buildWidget(
            context,
            isLoading,
            child: _onQueryCompleted!(context, snapshot, child),
          );
        },
      );
    }
  }
}
