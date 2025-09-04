import 'package:shared/shared.dart';

extension FormHelper on GlobalKey<FormState> {
  Future<void> onSubmit(
    BuildContext context, {
    required bool isAdd,
    required Future Function(UserModel user) onCall,
  }) async {
    if (currentState!.validate()) {
      context.unFocusKeyboard();
      ApiService.fetch(
        context,
        callBack: () async {
          final user = MySharedPreferences.user!;
          await onCall(user);
          // if (_isAdd) {
          //   _department.id = docRef.id;
          //   _department.companyId = user.companyId;
          //   _department.createdAt = kNowDate;
          // }
          // await docRef.set(_department);
          if (context.mounted) {
            context.showSnackBar(
              isAdd
                  ? context.appLocalization.addedSuccessfully
                  : context.appLocalization.updatedSuccessfully,
            );
            Navigator.pop(context);
          }
        },
      );
    }
  }
}
