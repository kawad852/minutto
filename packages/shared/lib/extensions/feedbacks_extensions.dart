import 'package:flutter/material.dart';

extension FeedbacksExtensions on BuildContext {
  Future<T?> showBottomSheet<T>({
    required Widget Function(BuildContext) builder,
    double? maxHeight,
  }) {
    return showModalBottomSheet<T?>(
      context: this,
      isScrollControlled: true,
      enableDrag: true,
      showDragHandle: true,
      useSafeArea: true,
      constraints: maxHeight == null
          ? null
          : BoxConstraints(maxHeight: maxHeight),
      builder: builder,
    ).then((value) => value);
  }
}
