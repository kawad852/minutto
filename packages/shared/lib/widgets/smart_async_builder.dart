import '../shared.dart';

class SmartAsyncBuilder<T> extends StatelessWidget {
  final Future<T>? future;
  final Stream<T>? stream;
  final Query<T>? firestoreQuery;

  final T? initialData;

  final Widget Function(BuildContext context)? onLoading;
  final Widget Function(AsyncSnapshot<T?> snapshot)? onError;
  final Widget Function(BuildContext context, AsyncSnapshot<T?> snapshot)? onFutureComplete;
  final Widget Function(BuildContext context, AsyncSnapshot<T?> snapshot)? onStreamComplete;
  final Widget Function(BuildContext context, FirestoreQueryBuilderSnapshot<T> snapshot)?
  onFirestoreComplete;
  final Future Function(List<QueryDocumentSnapshot<T>> docs)? secondaryQueryBuilder;

  const SmartAsyncBuilder._({
    this.future,
    this.stream,
    this.firestoreQuery,
    this.initialData,
    this.onLoading,
    this.onError,
    this.onFutureComplete,
    this.onStreamComplete,
    this.onFirestoreComplete,
    this.secondaryQueryBuilder,
    super.key,
  });

  factory SmartAsyncBuilder.future({
    required Future<T> future,
    required Widget Function(BuildContext, AsyncSnapshot<T?>) onComplete,
    T? initialData,
    Widget Function(BuildContext)? onLoading,
    Widget Function(AsyncSnapshot<T?>)? onError,
  }) {
    return SmartAsyncBuilder._(
      future: future,
      onFutureComplete: onComplete,
      initialData: initialData,
      onLoading: onLoading,
      onError: onError,
    );
  }

  factory SmartAsyncBuilder.stream({
    required Stream<T> stream,
    required Widget Function(BuildContext, AsyncSnapshot<T?>) onComplete,
    T? initialData,
    Widget Function(BuildContext)? onLoading,
    Widget Function(AsyncSnapshot<T?>)? onError,
  }) {
    return SmartAsyncBuilder._(
      stream: stream,
      onStreamComplete: onComplete,
      initialData: initialData,
      onLoading: onLoading,
      onError: onError,
    );
  }

  factory SmartAsyncBuilder.firestoreQuery({
    required Query<T> query,
    required Widget Function(BuildContext, FirestoreQueryBuilderSnapshot<T>) onComplete,
    Widget Function(BuildContext)? onLoading,
  }) {
    return SmartAsyncBuilder._(
      firestoreQuery: query,
      onFirestoreComplete: onComplete,
      onLoading: onLoading,
    );
  }

  @override
  Widget build(BuildContext context) {
    if (future != null) {
      return FutureBuilder<T?>(
        future: future,
        initialData: initialData,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return onLoading?.call(context) ?? const BaseLoader();
          }
          if (snapshot.hasData) {
            return onFutureComplete!(context, snapshot);
          }
          return onError?.call(snapshot) ?? const ServerErrorWidget();
        },
      );
    } else if (stream != null) {
      return StreamBuilder<T?>(
        stream: stream,
        initialData: initialData,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return onLoading?.call(context) ?? const BaseLoader();
          }
          if (snapshot.hasData) {
            return onStreamComplete!(context, snapshot);
          }
          return onError?.call(snapshot) ?? const ServerErrorWidget();
        },
      );
    } else if (firestoreQuery != null) {
      return FirestoreQueryBuilder<T>(
        query: firestoreQuery!,
        pageSize: 10,
        builder: (context, snapshot, _) {
          if (snapshot.hasData) {
            return onFirestoreComplete!(context, snapshot);
          } else if (snapshot.isFetching) {
            return onLoading?.call(context) ?? const BaseLoader();
          } else {
            return const ServerErrorWidget();
          }
        },
      );
    }

    return const SizedBox.shrink(); // Should not reach here
  }
}
