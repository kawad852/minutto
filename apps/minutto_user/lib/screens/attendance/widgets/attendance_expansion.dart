import 'package:shared/shared.dart';

class AttendanceExpansion extends StatefulWidget {
  final String userId;
  final DateTime date;
  final DateTime? endDate;

  const AttendanceExpansion({
    super.key,
    required this.userId,
    required this.date,
    required this.endDate,
  });

  @override
  State<AttendanceExpansion> createState() => _AttendanceExpansionState();
}

class _AttendanceExpansionState extends State<AttendanceExpansion> {
  late Stream<List<AttendanceModel>> _attendanceStream;

  void _initialize() {
    _attendanceStream = FirebaseFirestore.instance
        .userAttendance(id: widget.userId)
        .where(widget.date.dateFilter(endDate: widget.endDate))
        .snapshots()
        .map((e) => e.docs.map((e) => e.data()).toList());
  }

  List<AttendanceSession> buildAttendanceSessions(List<AttendanceModel> raw) {
    final items = [...raw]
      ..sort((a, b) => (a.createdAt ?? DateTime(0)).compareTo(b.createdAt ?? DateTime(0)));

    DateTime? workStart;
    DateTime? breakStart;
    final sessions = <AttendanceSession>[];

    for (final e in items) {
      final t = e.type.trim();
      final at = e.createdAt;
      if (at == null) continue;

      if (t == AttendanceEnum.checkIn.value) {
        workStart ??= at;
      } else if (t == AttendanceEnum.checkOut.value) {
        if (workStart != null) {
          sessions.add(AttendanceSession(kind: 'work', start: workStart, end: at));
          workStart = null;
        }
      } else if (t == AttendanceEnum.breakIn.value) {
        breakStart ??= at;
      } else if (t == AttendanceEnum.breakOut.value) {
        if (breakStart != null) {
          sessions.add(AttendanceSession(kind: 'break', start: breakStart, end: at));
          breakStart = null;
        }
      }
    }

    if (breakStart != null) {
      sessions.add(AttendanceSession(kind: 'break', start: breakStart, end: null));
    }
    if (workStart != null) {
      sessions.add(AttendanceSession(kind: 'work', start: workStart, end: null));
    }

    sessions.sort((a, b) => a.start.compareTo(b.start));
    return sessions;
  }

  @override
  void initState() {
    super.initState();
    _initialize();
  }

  @override
  void didUpdateWidget(covariant AttendanceExpansion oldWidget) {
    if (oldWidget.date.day != widget.date.day ||
        oldWidget.date.month != widget.date.month ||
        oldWidget.date.year != widget.date.year) {
      setState(() {
        _initialize();
      });
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    final style = TextStyle(
      color: context.colorPalette.blue475,
      fontSize: 14,
    );
    return BlitzBuilder.stream(
      stream: _attendanceStream,
      onComplete: (context, snapshot) {
        final attendances = snapshot.data ?? [];
        final todaySessions = buildAttendanceSessions(attendances);
        return Column(
          spacing: 5,
          children: todaySessions.map((session) {
            return Row(
              children: [
                Expanded(
                  child: Column(
                    spacing: 4,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomSvg(MyIcons.enter),
                      Text(
                        session.start.hourFormat,
                        style: style,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    spacing: 4,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomSvg(MyIcons.out),
                      Text(
                        session.end?.hourFormat ?? "-",
                        style: style,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Text(
                    session.kind,
                    style: TextStyle(
                      color: context.colorPalette.blue475,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            );
          }).toList(),
        );
      },
    );
  }
}
