import '../../shared.dart';

class UserProvider extends ChangeNotifier {
  UserModel? get user => MySharedPreferences.user;
  String? get userUid => MySharedPreferences.user?.id;
  bool get isAuthenticated => userUid != null && userUid!.isNotEmpty;

  FirebaseAuth get _firebaseAuth => FirebaseAuth.instance;
  FirebaseFirestore get _firebaseFirestore => FirebaseFirestore.instance;
  DocumentReference<UserModel> get userDocRef => _firebaseFirestore.users.doc(userUid);
  Stream<DocumentSnapshot<UserModel>> get userStream => userDocRef.snapshots();

  String getToken(String code, String phone) => "minutto-$code-$phone";

  Future<void> register(
    BuildContext context, {
    required UserModel user,
    required Function() onSuccess,
    bool isLogin = false,
  }) async {
    final uid = getToken(user.phoneNumber, user.phoneNumberCountryCode);
    final results = await generateCustomToken(uid);
    user.id = uid;
    final customToken = results.data as String;

    await FirebaseAuth.instance.signInWithCustomToken(customToken);

    final userDocument = await _firebaseFirestore.users.doc(user.id).get();

    if (userDocument.exists) {
      if (context.mounted && userDocument.data()!.status == UserStatusEnum.inactive.value) {
        context.showSnackBar(context.appLocalization.authFailed);
        return;
      }
      MySharedPreferences.user = userDocument.data()!;
    } else if (isLogin && !userDocument.exists && context.mounted) {
      context.showSnackBar(context.appLocalization.authFailed);
      return;
    } else {
      user.createdAt = DateTime.now();
      MySharedPreferences.user = user;
      await FirebaseFirestore.instance.users.doc(user.id).set(user);
    }

    await _firebaseFirestore.companies.doc(MySharedPreferences.user!.companyId).get().then(
      (value) {
        MySharedPreferences.company = value.data();
      },
    );
    notifyListeners();

    if (context.mounted) {
      onSuccess();
    }
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

  Future<void> login(
    BuildContext context, {
    required String email,
    required String password,
  }) async {
    await ApiService.fetch(
      context,
      callBack: () async {
        // final user = UserModel();

        final auth = await _firebaseAuth.signInWithEmailAndPassword(
          email: email,
          password: password,
        );

        final userDocument = await _firebaseFirestore.users.doc(auth.user!.uid).get();
        final user = userDocument.data()!;

        if (userDocument.exists) {
          if (context.mounted && user.status == UserStatusEnum.inactive.value) {
            context.showSnackBar(context.appLocalization.authFailed);
            return;
          }

          MySharedPreferences.user = user;
        } else {
          if (context.mounted) {
            context.showSnackBar(context.appLocalization.authFailed);
          }
        }

        if (context.mounted) {
          if (user.roleId == null) {
            Fluttertoast.showToast(msg: context.appLocalization.authFailed);
          } else {
            await context.portalProvider.initRole(context);
            if (context.mounted) {
              notifyListeners();
              GoRouter.of(context).go(context.portalProvider.role!.initialLocation!);
            }
          }
          return;
        }
      },
    );
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

  Future<HttpsCallableResult> generateCustomToken(String uid) async {
    var callable = FirebaseFunctions.instanceFor(
      region: "europe-west3",
    ).httpsCallable('generateCustomToken');
    final results = await callable.call(<String, dynamic>{
      'uid': uid,
    });
    return results;
  }

  Future<String> createAuthUser(String email, String password, {bool admin = false}) async {
    try {
      HttpsCallable callable = FirebaseFunctions.instanceFor(
        region: "europe-west3",
      ).httpsCallable('createUser');
      final results = await callable.call(<String, dynamic>{
        'email': email,
        'password': password,
        "admin": admin,
      });
      final data = results.data as Map<String, dynamic>;
      final uid = data['uid'];
      return uid;
    } catch (e) {
      rethrow;
    }
  }
}
