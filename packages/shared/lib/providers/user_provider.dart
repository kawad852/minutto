import 'package:flutter/cupertino.dart';

import '../../shared.dart';

class UserProvider extends ChangeNotifier {
  UserModel? get user => MySharedPreferences.user;
  String? get userUid => MySharedPreferences.user?.id;
  bool get isAuthenticated => userUid != null;

  FirebaseAuth get _firebaseAuth => FirebaseAuth.instance;
  FirebaseFirestore get _firebaseFirestore => FirebaseFirestore.instance;
  DocumentReference<UserModel> get userDocRef => _firebaseFirestore.users.doc(userUid);
  Stream<DocumentSnapshot<UserModel>> get userStream => userDocRef.snapshots();
  CollectionReference<BasketModel> get userBasketCollectionRef => userDocRef
      .collection(MyCollections.basket)
      .withConverter<BasketModel>(
        fromFirestore: (snapshot, _) => BasketModel.fromJson(snapshot.data()!),
        toFirestore: (snapshot, _) => snapshot.toJson(),
      );
  DocumentReference<FoodStoreModel> get storeDocRef =>
      _firebaseFirestore.foodStores.doc(user?.storeId);
  Stream<QuerySnapshot<BasketModel>> get userBasketStream => userBasketCollectionRef.snapshots();
  CollectionReference<Map<String, dynamic>> get addressesCollectionRef =>
      userDocRef.collection(MyCollections.addresses);
  CollectionReference<AddressModel> get addressesCollectionRefConverted => userDocRef
      .collection(MyCollections.addresses)
      .withConverter<AddressModel>(
        fromFirestore: (snapshot, _) => AddressModel.fromJson(snapshot.data()!),
        toFirestore: (snapshot, _) {
          final data = snapshot.toJson();
          if (snapshot.createdAt == null) {
            data['createdAt'] = FieldValue.serverTimestamp();
          }
          return data;
        },
      );

  Future<void> register(
    BuildContext context, {
    required String? provider,
    AuthCredential? credential,
    (String email, String password)? emailAndPassword,
    required Function(BuildContext context) onSuccess,
    bool canRegister = true,
    required bool isGuest,
    UserCredential? userCredential,
    (String countryCode, String phoneNum)? phoneAuthValues,
  }) async {
    await ApiService.fetch(
      context,
      withOverlayLoader: phoneAuthValues == null,
      callBack: () async {
        late UserCredential auth;
        if (userCredential != null) {
          auth = userCredential;
        } else if (credential != null) {
          auth = await _firebaseAuth.signInWithCredential(credential);
        } else if (emailAndPassword != null) {
          auth = await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: emailAndPassword.$1,
            password: emailAndPassword.$2,
          );
        }
        final user = UserModel();
        user.id = auth.user?.uid;
        user.email = auth.user?.email;
        user.languageCode = MySharedPreferences.language;
        user.userToken = MySharedPreferences.userToken;
        user.phoneCountryCode = phoneAuthValues?.$1;
        user.phoneNum = phoneAuthValues?.$2;

        final userDocument = await _firebaseFirestore.users.doc(user.id).get();

        if (userDocument.exists) {
          if (context.mounted && userDocument.data()!.blocked) {
            context.showSnackBar(context.appLocalization.authFailed);
            return;
          }
          MySharedPreferences.user = userDocument.data()!;
        } else if (canRegister) {
          MySharedPreferences.user = user;
          final json = {...user.toJson(), MyFields.createdAt: FieldValue.serverTimestamp()};
          await FirebaseFirestore.instance.collection(MyCollections.users).doc(user.id).set(json);
        }

        notifyListeners();

        if (context.mounted) {
          if (isGuest) {
            CupertinoSheetRoute.popSheet(context);
          } else {
            onSuccess(context);
          }
          // if (guestRoute == null) {
          //   onSuccess(context);
          // } else {
          //   Navigator.popUntil(
          //     context,
          //     (route) => guestRoute == '/' ? route.isFirst : route.settings.name == guestRoute,
          //   );
          // }
        }
      },
    );
  }

  Future<String?> _getDeviceToken() async {
    try {
      return await FirebaseMessaging.instance.getToken();
    } catch (e) {
      return null;
    }
  }

  Future<void> updateDeviceToken(BuildContext context) async {
    try {
      if (isAuthenticated) {
        final deviceToken = await _getDeviceToken();
        debugPrint("deviceToken:: $deviceToken");
        if (deviceToken != null && MySharedPreferences.deviceToken != deviceToken) {
          MySharedPreferences.deviceToken = deviceToken;
          userDocRef.update({
            MyFields.deviceTokens: FieldValue.arrayUnion([deviceToken]),
          });
        }
      }
    } catch (e) {
      debugPrint("DeviceTokenError:: $e");
    }
  }

  Future<void> logout(BuildContext context, {required WidgetBuilder builder}) async {
    ApiService.fetch(
      context,
      callBack: () async {
        await _firebaseAuth.signOut();
        MySharedPreferences.clearStorage();
        notifyListeners();
        if (context.mounted) {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: builder),
            (route) => false,
          );
        }
      },
    );
  }

  Future<void> deleteAccount(BuildContext context) async {
    ApiService.fetch(
      context,
      callBack: () async {
        // await user?.delete();
        if (context.mounted) {
          // logout(context);
          context.showSnackBar(context.appLocalization.deleteAccountSuccess);
        }
      },
    );
  }

  void toggleFavorite(
    BuildContext context,
    bool inFav, {
    required String id,
    required String type,
    bool fromFavorites = false,
  }) async {
    final favorite = FavoriteModel(id: id, type: type, createdAt: kNowDate);
    final favDocRef = userDocRef.collection(MyCollections.favorites).favoriteConvertor.doc(id);
    final batch = getIt<FirebaseFirestore>().batch();
    if (fromFavorites) {
      final results = await context.showDialog(
        titleText: context.appLocalization.itemDeleteTitle,
        bodyText: context.appLocalization.itemDeleteBody,
        warning: true,
      );
      if (!results) {
        return;
      }
    }
    if (inFav) {
      batch.delete(favDocRef);
      batch.update(userDocRef, {
        MyFields.favoriteIds: FieldValue.arrayRemove([id]),
      });
    } else {
      batch.set(favDocRef, favorite);
      batch.update(userDocRef, {
        MyFields.favoriteIds: FieldValue.arrayUnion([id]),
      });
    }
    batch.commit();
  }

  void updateRecentSearches(String value) {
    List<String> recent = user!.recentSearches;
    recent.remove(value);
    recent.insert(0, value);
    if (recent.length > 10) {
      recent = recent.sublist(0, 10);
    }
    userDocRef.update({MyFields.recentSearches: recent});
  }
}
