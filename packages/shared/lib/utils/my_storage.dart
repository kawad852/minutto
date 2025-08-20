import '../shared.dart';

class MyStorage {
  static late GetStorage _box;

  static Future<void> init() async {
    await GetStorage.init();
    _box = GetStorage();
  }

  // === Countries ===
  static List<CountryModel> get countries {
    final data = _box.read('countries');
    if (data != null) {
      final List<Map<String, dynamic>> list = List<Map<String, dynamic>>.from(jsonDecode(data));
      return list.map((e) => CountryModel.fromJson(e)).toList();
    }
    return [];
  }

  static set countries(List<CountryModel> value) {
    _box.write('countries', jsonEncode(value));
  }

  // === Home Queries ===
  static HomeCachedHelper? get homeQueries {
    try {
      final data = _box.read('homeQueries');
      if (data != null) {
        return HomeCachedHelper.fromJson(jsonDecode(data));
      }
    } catch (e) {
      debugPrint("homeQueriesError: $e");
    }
    return null;
  }

  static set homeQueries(HomeCachedHelper? value) {
    try {
      if (value == null) {
        _box.remove('homeQueries');
      } else {
        _box.write('homeQueries', jsonEncode(value));
      }
    } catch (e) {
      debugPrint("homeQueriesWriteError: $e");
    }
  }

  // === Delivery Areas ===
  static List<DeliveryAreaModel> get deliveryAreas {
    final data = _box.read('deliveryAreas');
    if (data != null) {
      final List<Map<String, dynamic>> list = List<Map<String, dynamic>>.from(jsonDecode(data));
      return list.map((e) => DeliveryAreaModel.fromJson(e)).toList();
    }
    return [];
  }

  static set deliveryAreas(List<DeliveryAreaModel> value) {
    _box.write('deliveryAreas', jsonEncode(value));
  }
}
