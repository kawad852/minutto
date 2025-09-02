import '../shared.dart';

enum GenderEnum {
  male("male"),
  female("female");

  final String value;

  const GenderEnum(this.value);

  static String label(BuildContext context, String status) {
    final value = values.firstWhere((e) => e.value == status);
    switch (value) {
      case GenderEnum.male:
        return context.appLocalization.male;
      case GenderEnum.female:
        return context.appLocalization.female;
    }
  }
}
