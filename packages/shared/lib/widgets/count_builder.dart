import 'package:shared/shared.dart';

class CountBuilder extends StatefulWidget {
  final String collection;
  final Widget Function(BuildContext context, int count) child;

  const CountBuilder({
    super.key,
    required this.collection,
    required this.child,
  });

  @override
  State<CountBuilder> createState() => _CountBuilderState();
}

class _CountBuilderState extends State<CountBuilder> {
  late Future<int> _future;

  void _initialize() {
    _future = AggregationService.instance.getRequestsCount(widget.collection);
  }

  @override
  void initState() {
    super.initState();
    _initialize();
  }

  @override
  Widget build(BuildContext context) {
    return BlitzBuilder.future(
      future: _future,
      onComplete: (context, snapshot) {
        final count = snapshot.data ?? 0;
        return widget.child(context, count);
      },
    );
  }
}
