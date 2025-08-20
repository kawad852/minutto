import '../../shared.dart';

class FirestoreService {
  final FirebaseFirestore _db;

  FirestoreService(this._db);

  Query<ProductModel> mealsQuery(String storeId) {
    return _db.menu(storeId);
  }
}
