import 'package:shared/models/post/post_model.dart';

import '../shared.dart';

extension FireConvertors on CollectionReference {
  CollectionReference<UserModel> get userConvertor => withConverter<UserModel>(
    fromFirestore: (snapshot, _) => UserModel.fromJson(snapshot.data()!),
    toFirestore: (snapshot, _) => snapshot.toJson(),
  );

  CollectionReference<FoodStoreModel> get storeConvertor => withConverter<FoodStoreModel>(
    fromFirestore: (snapshot, _) => FoodStoreModel.fromJson(snapshot.data()!),
    toFirestore: (snapshot, _) => snapshot.toJson(),
  );

  CollectionReference<CountryModel> get countryConvertor => withConverter<CountryModel>(
    fromFirestore: (snapshot, _) => CountryModel.fromJson(snapshot.data()!),
    toFirestore: (snapshot, _) => snapshot.toJson(),
  );

  CollectionReference<CategoryModel> get categoryConvertor => withConverter<CategoryModel>(
    fromFirestore: (snapshot, _) => CategoryModel.fromJson(snapshot.data()!),
    toFirestore: (snapshot, _) => snapshot.toJson(),
  );

  CollectionReference<PromoCodeModel> get promoCodeConvertor => withConverter<PromoCodeModel>(
    fromFirestore: (snapshot, _) => PromoCodeModel.fromJson(snapshot.data()!),
    toFirestore: (snapshot, _) => snapshot.toJson(),
  );

  CollectionReference<OrderModel> get orderConvertor => withConverter<OrderModel>(
    fromFirestore: (snapshot, _) => OrderModel.fromJson(snapshot.data()!),
    toFirestore: (snapshot, _) => snapshot.toJson(),
  );

  CollectionReference<ProductModel> get productConvertor => withConverter<ProductModel>(
    fromFirestore: (snapshot, _) => ProductModel.fromJson(snapshot.data()!),
    toFirestore: (snapshot, _) => snapshot.toJson(),
  );

  CollectionReference<PolicyModel> get policyConvertor => withConverter<PolicyModel>(
    fromFirestore: (snapshot, _) => PolicyModel.fromJson(snapshot.data()!),
    toFirestore: (snapshot, _) => snapshot.toJson(),
  );

  CollectionReference<FilterModel> get filterConvertor => withConverter<FilterModel>(
    fromFirestore: (snapshot, _) => FilterModel.fromJson(snapshot.data()!),
    toFirestore: (snapshot, _) => snapshot.toJson(),
  );

  CollectionReference<FacetDocumentModel> get facetConvertor => withConverter<FacetDocumentModel>(
    fromFirestore: (snapshot, _) => FacetDocumentModel.fromJson(snapshot.data()!),
    toFirestore: (snapshot, _) => snapshot.toJson(),
  );

  CollectionReference<FavoriteModel> get favoriteConvertor => withConverter<FavoriteModel>(
    fromFirestore: (snapshot, _) => FavoriteModel.fromJson(snapshot.data()!),
    toFirestore: (snapshot, _) => snapshot.toJson(),
  );

  CollectionReference<PostModel> get postConvertor => withConverter<PostModel>(
    fromFirestore: (snapshot, _) => PostModel.fromJson(snapshot.data()!),
    toFirestore: (snapshot, _) => snapshot.toJson(),
  );

  CollectionReference<RoleModel> get roleConvertor => withConverter<RoleModel>(
    fromFirestore: (snapshot, _) => RoleModel.fromJson(snapshot.data()!),
    toFirestore: (snapshot, _) => snapshot.toJson(),
  );

  CollectionReference<CallCenterModel> get callCenterConvertor => withConverter<CallCenterModel>(
    fromFirestore: (snapshot, _) => CallCenterModel.fromJson(snapshot.data()!),
    toFirestore: (snapshot, _) => snapshot.toJson(),
  );

  CollectionReference<DeliveryAreaModel> get deliveryAreaConvertor =>
      withConverter<DeliveryAreaModel>(
        fromFirestore: (snapshot, _) => DeliveryAreaModel.fromJson(snapshot.data()!),
        toFirestore: (snapshot, _) => snapshot.toJson(),
      );

  CollectionReference<DriverModel> get driverConvertor => withConverter<DriverModel>(
    fromFirestore: (snapshot, _) => DriverModel.fromJson(snapshot.data()!),
    toFirestore: (snapshot, _) => snapshot.toJson(),
  );

  CollectionReference<ReviewModel> get reviewConvertor => withConverter<ReviewModel>(
    fromFirestore: (snapshot, _) => ReviewModel.fromJson(snapshot.data()!),
    toFirestore: (snapshot, _) => snapshot.toJson(),
  );

  CollectionReference<BrandModel> get brandConvertor => withConverter<BrandModel>(
    fromFirestore: (snapshot, _) => BrandModel.fromJson(snapshot.data()!),
    toFirestore: (snapshot, _) => snapshot.toJson(),
  );

  CollectionReference<RequestModel> get requestConvertor => withConverter<RequestModel>(
    fromFirestore: (snapshot, _) => RequestModel.fromJson(snapshot.data()!),
    toFirestore: (snapshot, _) => snapshot.toJson(),
  );

  CollectionReference<SalaryAdvanceModel> get salaryAdvanceConvertor =>
      withConverter<SalaryAdvanceModel>(
        fromFirestore: (snapshot, _) => SalaryAdvanceModel.fromJson(snapshot.data()!),
        toFirestore: (snapshot, _) => snapshot.toJson(),
      );
}
