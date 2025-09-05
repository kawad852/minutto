import 'package:shared/models/post/post_model.dart';

import '../../shared.dart';

extension CollectionReferenceExtension on FirebaseFirestore {
  CollectionReference<UserModel> get users => collection(MyCollections.users).userConvertor;

  CollectionReference<FavoriteModel> get favorites =>
      users.doc(MySharedPreferences.user!.id).collection(MyCollections.favorites).favoriteConvertor;

  CollectionReference<FoodStoreModel> get foodStores =>
      collection(MyCollections.foodStores).storeConvertor;

  CollectionReference<ProductModel> menu(String storeId) =>
      foodStores.doc(storeId).collection(MyCollections.menu).productConvertor;

  DocumentReference<FoodStoreModel> get myFoodStore => foodStores.doc(MySharedPreferences.user?.id);

  CollectionReference<CountryModel> get countries => collection("countries").countryConvertor;

  CollectionReference<CategoryModel> get categories =>
      collection(MyCollections.categories).categoryConvertor;

  CollectionReference<PromoCodeModel> get promoCodes =>
      collection(MyCollections.promoCodes).promoCodeConvertor;

  CollectionReference<ProductModel> get products =>
      collection(MyCollections.products).productConvertor;

  CollectionReference<PolicyModel> get policies =>
      collection(MyCollections.policies).policyConvertor;

  CollectionReference<PostModel> get posts => collection(MyCollections.posts).postConvertor;
  CollectionReference<RoleModel> get roles => collection(MyCollections.roles).roleConvertor;

  CollectionReference<FilterModel> get filters => collection(MyCollections.filters).filterConvertor;
  CollectionReference<FacetDocumentModel> get facets =>
      collection(MyCollections.filters).facetConvertor;
  CollectionReference<ReviewModel> storesReviews(String storeId) =>
      foodStores.doc(storeId).collection(MyCollections.reviews).reviewConvertor;
  CollectionReference<ReviewModel> productsReviews(String id) =>
      products.doc(id).collection(MyCollections.reviews).reviewConvertor;
  CollectionReference<DriverModel> get drivers => collection(MyCollections.drivers).driverConvertor;

  CollectionReference<BrandModel> get brands => collection(MyCollections.brands).brandConvertor;
  CollectionReference<RequestModel> get vacations =>
      collection(MyCollections.leaves).requestConvertor;

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
  CollectionReference<HolidayModel> get holidays =>
      collection(MyCollections.holidays).holidayConvertor;
}
