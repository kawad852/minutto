import '../shared.dart';

final GetIt getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<FirebaseFirestore>(() => FirebaseFirestore.instance);
  getIt.registerLazySingleton<FirestoreService>(() => FirestoreService(getIt<FirebaseFirestore>()));
}
