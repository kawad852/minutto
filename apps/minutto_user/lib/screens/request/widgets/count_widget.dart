import 'package:shared/shared.dart';

class CountWidget extends StatefulWidget {
  final Query query;
  final bool selected;

  const CountWidget({
    super.key,
    required this.query,
    required this.selected,
  });

  @override
  State<CountWidget> createState() => _CountWidgetState();
}

class _CountWidgetState extends State<CountWidget> {
  late Future<int> _future;

  void _initialize() {
    _future = widget.query.count().get().then((value) => value.count ?? 0);
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
        return Container(
          width: 20,
          height: 20,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: widget.selected ? context.colorPalette.redF95 : context.colorPalette.greyD0D,
            shape: BoxShape.circle,
          ),
          child: Text(
            "$count",
            style: TextStyle(
              color: context.colorPalette.white,
              fontSize: 12,
            ),
          ),
        );
      },
    );
  }
}
