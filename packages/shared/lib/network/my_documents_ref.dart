import '../../shared.dart';

extension DocReferenceExtension on DocumentReference {
  FirebaseFirestore get _firebaseFirestore => FirebaseFirestore.instance;

  CollectionReference<ProductModel> get meals => collection("menu").withConverter<ProductModel>(
    fromFirestore: (snapshot, _) => ProductModel.fromJson(snapshot.data()!),
    toFirestore: (snapshot, _) => snapshot.toJson(),
  );
}
