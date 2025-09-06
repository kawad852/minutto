import '../../shared.dart';

class MySharedPreferences {
  static late SharedPreferences _sharedPreferences;

  static Future init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  static void clearStorage() {
    user = null;
    userToken = "";
    company = null;
  }

  static UserModel? get user {
    String? value = _sharedPreferences.getString('user');
    UserModel? userModel;
    if (value != null && value.isNotEmpty && value != 'null') {
      userModel = UserModel.fromJson(jsonDecode(value));
    }
    return userModel;
  }

  static set user(UserModel? value) {
    value?.createdAt = null;
    _sharedPreferences.setString('user', jsonEncode(value?.toJson()));
  }

  static List<BasketModel> get basket {
    var value = _sharedPreferences.getString('basket');
    List<BasketModel>? basket = [];
    if (value != null && value.isNotEmpty && value != 'null') {
      List<dynamic> result = jsonDecode(value);
      basket = result.toList().map((element) => BasketModel.fromJson(element)).toList();
      return basket;
    } else {
      return [];
    }
  }

  static set basket(List<BasketModel>? value) {
    if (value != null) {
      for (var element in value) {
        element.createdAt = null;
        element.product?.createdAt = null;
      }
    }
    _sharedPreferences.setString('basket', jsonEncode(value));
  }

  static bool get passedIntro => _sharedPreferences.getBool('passedIntro') ?? false;
  static set passedIntro(bool value) => _sharedPreferences.setBool('passedIntro', value);

  static String get language => _sharedPreferences.getString('language') ?? LanguageEnum.arabic;
  static set language(String value) => _sharedPreferences.setString('language', value);

  static String get theme => _sharedPreferences.getString('theme') ?? ThemeEnum.light;
  static set theme(String value) => _sharedPreferences.setString('theme', value);

  static String get deviceToken => _sharedPreferences.getString('deviceToken') ?? '';
  static set deviceToken(String value) => _sharedPreferences.setString('deviceToken', value);

  static String get userToken => _sharedPreferences.getString('userToken') ?? '';
  static set userToken(String value) => _sharedPreferences.setString('userToken', value);

  static String get deliveryAreasVersion =>
      _sharedPreferences.getString('deliveryAreasVersion') ?? '';
  static set deliveryAreasVersion(String value) =>
      _sharedPreferences.setString('deliveryAreasVersion', value);

  static String get countryCode =>
      _sharedPreferences.getString('countryCode') ?? kFallBackCountryCode;
  static set countryCode(String value) => _sharedPreferences.setString('countryCode', value);

  static RoleModel? get role {
    String? value = _sharedPreferences.getString('role');
    RoleModel? role;
    if (value != null && value.isNotEmpty && value != 'null') {
      role = RoleModel.fromJson(jsonDecode(value));
    }
    return role;
  }

  static set role(RoleModel? value) {
    value?.createdAt = null;
    _sharedPreferences.setString('role', jsonEncode(value?.toJson()));
  }

  static FoodStoreModel get foodStore {
    String? value = _sharedPreferences.getString('foodStore');
    late FoodStoreModel store;
    if (value != null && value.isNotEmpty && value != 'null') {
      store = FoodStoreModel.fromJson(jsonDecode(value));
    } else {
      store = FoodStoreModel(geoLoc: GeoLocModel());
    }
    return store;
  }

  static set foodStore(FoodStoreModel value) {
    value.createdAt = null;
    _sharedPreferences.setString('foodStore', jsonEncode(value.toJson()));
  }

  static VersionModel? get versions {
    String? value = _sharedPreferences.getString('versions');
    VersionModel? versionModel;
    if (value != null && value.isNotEmpty && value != 'null') {
      versionModel = VersionModel.fromJson(jsonDecode(value));
    }
    return versionModel;
  }

  static set versions(VersionModel? value) {
    _sharedPreferences.setString('versions', jsonEncode(value?.toJson()));
  }

  static CompanyModel? get company {
    String? value = _sharedPreferences.getString('company');
    CompanyModel? model;
    if (value != null && value.isNotEmpty && value != 'null') {
      model = CompanyModel.fromJson(jsonDecode(value));
    }
    return model;
  }

  static set company(CompanyModel? value) {
    _sharedPreferences.setString('company', jsonEncode(value?.toJson()));
  }

  static ShiftModel? get shift {
    String? value = _sharedPreferences.getString('shift');
    ShiftModel? model;
    if (value != null && value.isNotEmpty && value != 'null') {
      model = ShiftModel.fromJson(jsonDecode(value));
    }
    return model;
  }

  static set shift(ShiftModel? value) {
    _sharedPreferences.setString('shift', jsonEncode(value?.toJson()));
  }
}
