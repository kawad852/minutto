import '../shared.dart';

class TimestampSerializer implements JsonConverter<DateTime?, dynamic> {
  const TimestampSerializer();

  @override
  DateTime? fromJson(dynamic timestamp) {
    try {
      if (timestamp is Timestamp) {
        return timestamp.toDate();
      } else if (timestamp is int) {
        if (timestamp > 1000000000000) {
          return DateTime.fromMillisecondsSinceEpoch(timestamp);
        } else {
          return DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
        }
      } else if (timestamp is String) {
        return DateTime.tryParse(timestamp);
      } else if (timestamp is DateTime) {
        return timestamp;
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }

  @override
  Timestamp? toJson(DateTime? date) =>
      date != null ? Timestamp.fromDate(date) : null;
}
