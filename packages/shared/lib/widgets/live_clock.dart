import '../shared.dart';

class LiveClock extends StatefulWidget {
  const LiveClock({super.key});

  @override
  State<LiveClock> createState() => _LiveClockState();
}

class _LiveClockState extends State<LiveClock> {
  DateTime _now = DateTime.now();
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTicker();
  }

  void _startTicker() {
    _timer?.cancel();
    final msToNextSecond = 1000 - _now.millisecond;
    _timer = Timer(Duration(milliseconds: msToNextSecond), () {
      _timer = Timer.periodic(const Duration(seconds: 1), (_) {
        if (mounted) {
          setState(() => _now = DateTime.now());
        }
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _now.hourFormat,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: context.colorPalette.white,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
