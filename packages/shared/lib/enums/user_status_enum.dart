enum UserStatusEnum {
  pending(defaultValue),
  active("active"),
  inactive("inactive");

  static const defaultValue = "pending";
  final String value;

  const UserStatusEnum(this.value);
}
