import '../shared.dart';

extension RequestExtension on String {
  RequestInfoModel info(BuildContext context) {
    switch (this) {
      case MyCollections.vacations:
        return RequestInfoModel(
          title: context.appLocalization.vacations,
          inputTitle: context.appLocalization.vacationRequest,
          dateTitle: context.appLocalization.vacationDate,
        );
      case MyCollections.leaves:
        return RequestInfoModel(
          title: context.appLocalization.leaves,
          inputTitle: context.appLocalization.leaveRequest,
          dateTitle: context.appLocalization.leaveDate,
        );
      case MyCollections.overtimes:
        return RequestInfoModel(
          title: context.appLocalization.overtime,
          inputTitle: context.appLocalization.overtimeRequest,
          dateTitle: context.appLocalization.orderDate,
        );
      default:
        throw Exception('Collection not implemented');
    }
  }
}
