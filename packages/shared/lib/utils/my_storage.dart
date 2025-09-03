import '../shared.dart';

class MyStorage {
  static late GetStorage _box;

  static Future<void> init() async {
    await GetStorage.init();
    _box = GetStorage();
  }

  // === cities ===
  static List<CountryModel> get cities {
    final data = _box.read('cities');
    if (data != null) {
      final List<Map<String, dynamic>> list = List<Map<String, dynamic>>.from(jsonDecode(data));
      return list.map((e) => CountryModel.fromJson(e)).toList();
    }
    return [];
  }

  static set cities(List<CountryModel> value) {
    _box.write('cities', jsonEncode(value));
  }

  // === users ===
  static List<UserModel> get users {
    final data = _box.read('users');
    if (data != null) {
      final List<Map<String, dynamic>> list = List<Map<String, dynamic>>.from(jsonDecode(data));
      return list.map((e) => UserModel.fromJson(e)).toList();
    }
    return [];
  }

  static set users(List<UserModel> value) {
    _box.write('users', jsonEncode(value));
  }

  // === departments ===
  static List<DepartmentModel> get departments {
    final data = _box.read('departments');
    if (data != null) {
      final List<Map<String, dynamic>> list = List<Map<String, dynamic>>.from(jsonDecode(data));
      return list.map((e) => DepartmentModel.fromJson(e)).toList();
    }
    return [];
  }

  static set departments(List<DepartmentModel> value) {
    _box.write('departments', jsonEncode(value));
  }

  // === branches ===
  static List<BranchModel> get branches {
    final data = _box.read('branches');
    if (data != null) {
      final List<Map<String, dynamic>> list = List<Map<String, dynamic>>.from(jsonDecode(data));
      return list.map((e) => BranchModel.fromJson(e)).toList();
    }
    return [];
  }

  static set branches(List<BranchModel> value) {
    _box.write('branches', jsonEncode(value));
  }
}
