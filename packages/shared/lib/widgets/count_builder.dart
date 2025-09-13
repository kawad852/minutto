import 'package:shared/shared.dart';

class CountBuilder extends StatefulWidget {
  final String collection;
  final Filter? filter;
  final Widget Function(BuildContext context, int count) child;

  const CountBuilder({
    super.key,
    required this.collection,
    required this.child,
    this.filter,
  });

  @override
  State<CountBuilder> createState() => _CountBuilderState();
}

class _CountBuilderState extends State<CountBuilder> {
  late Future<int> _future;

  void _initialize() {
    _future = AggregationService.instance
        .getRequestsCount(
          widget.collection,
          f: widget.filter,
        )
        .then((value) => value.count ?? 0);
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
      initialData: 0,
      onComplete: (context, snapshot) {
        final count = snapshot.data ?? 0;
        return widget.child(context, count);
      },
    );
  }
}
