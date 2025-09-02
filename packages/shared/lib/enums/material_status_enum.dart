import '../shared.dart';

enum MaritalStatusEnum {
  single("single"),
  married("married"),
  divorced("divorced"),
  widowed("widowed");

  final String value;

  const MaritalStatusEnum(this.value);

  static String label(BuildContext context, String status) {
    final value = values.firstWhere((e) => e.value == status);
    switch (value) {
      case MaritalStatusEnum.single:
        return context.appLocalization.single;
      case MaritalStatusEnum.married:
        return context.appLocalization.married;
      case MaritalStatusEnum.divorced:
        return context.appLocalization.divorced;
      case MaritalStatusEnum.widowed:
        return context.appLocalization.widowed;
    }
  }
}
