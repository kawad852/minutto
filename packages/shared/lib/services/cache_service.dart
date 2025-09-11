import 'package:shared/shared.dart';

class CacheService {
  // --- Singleton setup ---
  CacheService._internal(); // Private constructor
  static final CacheService instance = CacheService._internal();

  var versions = MySharedPreferences.versions ?? VersionModel();

  FirebaseFirestore get _firebaseFirestore => getIt<FirebaseFirestore>();

  void fetchVersions() {
    _firebaseFirestore.versionsDoc.get().then((value) {
      final data = value.data();
      if (data != null) {
        _toggle(data);
      }
    });
  }

  void _toggle(VersionModel data) {
    print("version:: ${versions.shiftsVersion}");
    print("version:: ${data.shiftsVersion}");
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
    if (versions.shiftsVersion != data.shiftsVersion) {
      _fetchShifts();
    }
    versions = data;
    MySharedPreferences.versions = data;
  }

  void _fetchUsers() {
    _firebaseFirestore.users.whereCompanyId.get().then((value) {
      MyStorage.users = value.docs.map((e) => e.data()).toList();
    });
  }

  void _fetchCities() {
    _firebaseFirestore.cities.whereCompanyId.get().then((value) {
      MyStorage.cities = value.docs.map((e) => e.data()).toList();
    });
  }

  void _fetchBranches() {
    _firebaseFirestore.branches.whereCompanyId.get().then((value) {
      MyStorage.branches = value.docs.map((e) => e.data()).toList();
    });
  }

  void _fetchDepartments() {
    _firebaseFirestore.departments.whereCompanyId.get().then((value) {
      MyStorage.departments = value.docs.map((e) => e.data()).toList();
    });
  }

  void _fetchShifts() {
    _firebaseFirestore.shifts.whereCompanyId.get().then((value) {
      MyStorage.shifts = value.docs.map((e) => e.data()).toList();
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

  void fetchCompany() {
    final user = MySharedPreferences.user;
    _firebaseFirestore.companies.doc(user!.companyId).get().then((value) {
      final data = value.data()!;
      data.createdAt = null;
      MySharedPreferences.company = data;
    });
  }

  void fetchShift() {
    final user = MySharedPreferences.user;
    _firebaseFirestore.shifts.doc(user!.shiftId).get().then((value) {
      final data = value.data()!;
      data.createdAt = null;
      MySharedPreferences.shift = data;
    });
  }
}
