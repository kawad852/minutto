import '../../shared.dart';

class FirebaseAnalyticsService {
  static final instance = FirebaseAnalytics.instance;

  static void foodStoreLog(String eventName, {required String id}) {
    instance.logEvent(name: eventName, parameters: {'store_id': id});
  }

  Future<List<Map<String, dynamic>>> fetchAnalytics({
    required DateTime startDate,
    required DateTime endDate,
  }) async {
    final url = Uri.parse(
      'https://YOUR_FUNCTION_URL?startDate=${startDate.toIso8601String().split('T').first}&endDate=${endDate.toIso8601String().split('T').first}',
    );

    final response = await get(url);

    if (response.statusCode == 200) {
      final List data = json.decode(response.body);
      return data.map((e) => e as Map<String, dynamic>).toList();
    } else {
      throw Exception('Failed to load analytics');
    }
  }
}
