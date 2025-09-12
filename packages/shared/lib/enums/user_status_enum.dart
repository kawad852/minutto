enum UserStatusEnum {
  pending(defaultValue),
  accepted("active"),
  inactive("inactive");

  static const defaultValue = "pending";
  final String value;

  const UserStatusEnum(this.value);
}
