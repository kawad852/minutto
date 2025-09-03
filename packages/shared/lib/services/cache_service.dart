import 'package:shared/shared.dart';

class CacheService {
  // --- Singleton setup ---
  CacheService._internal(); // Private constructor
  static final CacheService instance = CacheService._internal();

  var versions = MySharedPreferences.versions ?? VersionModel();

  FirebaseFirestore get _firebaseFirestore => getIt<FirebaseFirestore>();

  void fetchVersions() {
    _firebaseFirestore
        .collection(MyCollections.settings)
        .versionConvertor
        .doc(kVersionsDocId)
        .get()
        .then((value) {
          final data = value.data();
          if (data != null) {
            _toggle(data);
          }
        });
  }

  void _toggle(VersionModel data) {
    if (versions.usersVersion != data.usersVersion) {
      _fetchUsers();
    }
    if (versions.citiesVersion != data.citiesVersion) {
      _fetchCities();
    }
    if (versions.branchesVersion != data.branchesVersion) {
      _fetchBranches();
    }
    if (versions.departmentsVersion != data.departmentsVersion) {
      _fetchDepartments();
    }
    versions = data;
    MySharedPreferences.versions = data;
  }

  void _fetchUsers() {
    _firebaseFirestore.users.get().then((value) {
      MyStorage.users = value.docs.map((e) => e.data()).toList();
    });
  }

  void _fetchCities() {
    _firebaseFirestore.cities.get().then((value) {
      MyStorage.cities = value.docs.map((e) => e.data()).toList();
    });
  }

  void _fetchBranches() {
    _firebaseFirestore.branches.get().then((value) {
      MyStorage.branches = value.docs.map((e) => e.data()).toList();
    });
  }

  void _fetchDepartments() {
    _firebaseFirestore.departments.get().then((value) {
      MyStorage.departments = value.docs.map((e) => e.data()).toList();
    });
  }

  UserModel getUser(String id) {
    final value = MyStorage.users.firstWhere((e) => e.id == id, orElse: () => UserModel());
    return value;
  }

  BranchModel getBranch(String id) {
    final value = MyStorage.branches.firstWhere(
      (e) => e.id == id,
      orElse: () => BranchModel(
        createdAt: kNowDate,
      ),
    );
    return value;
  }

  CityModel getCity(String id) {
    final value = MyStorage.cities.firstWhere(
      (e) => e.id == id,
      orElse: () => CityModel(
        createdAt: kNowDate,
      ),
    );
    return value;
  }

  DepartmentModel getDepartment(String id) {
    final value = MyStorage.departments.firstWhere(
      (e) => e.id == id,
      orElse: () => DepartmentModel(
        createdAt: kNowDate,
      ),
    );
    return value;
  }
}
