import '../shared.dart';

extension PaginationHandler on FirestoreQueryBuilderSnapshot {
  bool isLoadingMore(int index) {
    if (hasMore && index + 1 == docs.length) {
      fetchMore();
    }

    if (isFetchingMore && index + 1 == docs.length && docs.length > 10) {
      return true;
    }

    return false;
  }
}

extension PaginationHandler2 on FirePaginatorModel {
  bool isLoadingMore(int index) {
    if (hasMore && index + 1 == docs.length) {
      fetchMore();
    }

    if (isFetchingMore && index + 1 == docs.length && docs.length > 10) {
      return true;
    }

    return false;
  }
}
