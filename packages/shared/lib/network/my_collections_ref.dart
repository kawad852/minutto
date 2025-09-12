import '../../shared.dart';

extension CollectionReferenceExtension on FirebaseFirestore {
  CollectionReference<UserModel> get users => collection(MyCollections.users).userConvertor;

  CollectionReference<CountryModel> get countries => collection("countries").countryConvertor;

  CollectionReference<PolicyModel> get policies =>
      collection(MyCollections.policies).policyConvertor;

  CollectionReference<SalaryAdvanceModel> get salaryAdvances =>
      collection(MyCollections.salaryAdvances).salaryAdvanceConvertor;

  CollectionReference<DepartmentModel> get departments =>
      collection(MyCollections.departments).departmentConvertor;

  CollectionReference<BranchModel> get branches =>
      collection(MyCollections.branches).branchConvertor;

  CollectionReference<CityModel> get cities => collection(MyCollections.cities).cityConvertor;
  CollectionReference<CompanyModel> get companies =>
      collection(MyCollections.companies).companyConvertor;

  CollectionReference<VersionModel> get settingsCollectionRef => companies
      .doc(MySharedPreferences.user!.companyId)
      .collection(MyCollections.settings)
      .versionConvertor;

  DocumentReference<VersionModel> get versionsDoc => settingsCollectionRef.doc(kVersionsDocId);

  CollectionReference<ShiftModel> get shifts => collection(MyCollections.shifts).shiftConvertor;
  CollectionReference<RoleModel> get roles => collection(MyCollections.roles).roleConvertor;
  CollectionReference<HolidayModel> get holidays =>
      collection(MyCollections.holidays).holidayConvertor;

  // CollectionReference<AttendanceModel> get attendances =>
  //     collectionGroup(MyCollections.attendances).attendanceConvertor;
  CollectionReference<AttendanceModel> userAttendance({
    String? id,
  }) => users
      .doc(id ?? MySharedPreferences.user!.id)
      .collection(MyCollections.attendances)
      .attendanceConvertor;

  CollectionReference<NotificationModel> get userNotifications => users
      .doc(MySharedPreferences.user!.id)
      .collection(MyCollections.notifications)
      .notificationConvertor;

  CollectionReference<ShiftAssignmentModel> get shiftAssignments => companies
      .doc(MySharedPreferences.company!.id)
      .collection(MyCollections.shiftAssignments)
      .shiftAssignmentsConvertor;
}
