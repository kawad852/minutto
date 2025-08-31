import '../shared.dart';

extension RequestExtension on String {
  RequestInfoModel info(BuildContext context) {
    switch (this) {
      case MyCollections.vacations:
        return RequestInfoModel(
          title: context.appLocalization.vacations,
          inputTitle: context.appLocalization.vacationRequest,
        );
      case MyCollections.leaves:
        return RequestInfoModel(
          title: context.appLocalization.leaves,
          inputTitle: context.appLocalization.leaveRequest,
        );
      default:
        throw Exception('Collection not implemented');
    }
  }
}
