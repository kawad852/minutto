import '../shared.dart';

enum TableMenuOption { add, edit, delete }

class PathType {
  static const String manage = 'manage';
  static const String build = 'build';
  static const String engage = 'engage';
  static const String configure = 'configure';

  static const List<String> values = [manage, build, engage, configure];

  static PortalDrawerModel info(BuildContext context, String value) {
    switch (value) {
      case manage:
        return PortalDrawerModel(
          title: context.appLocalization.manage,
          icon: FontAwesomeIcons.lightClipboardList,
        );
      case build:
        return PortalDrawerModel(
          title: context.appLocalization.build,
          icon: FontAwesomeIcons.lightScrewdriverWrench,
        );
      case engage:
        return PortalDrawerModel(
          title: context.appLocalization.engage,
          icon: FontAwesomeIcons.lightDisplayChartUp,
        );
      case configure:
        return PortalDrawerModel(
          title: context.appLocalization.configure,
          icon: FontAwesomeIcons.lightNetworkWired,
        );
      default:
        return PortalDrawerModel(title: "", icon: FontAwesomeIcons.lightGear);
    }
  }
}
