enum LeaveRequestType {
  vacation('vacation'),
  leave('leave');

  final String value;

  const LeaveRequestType(this.value);
}

enum LeaveReason {
  sick('sick'),
  bereavement('bereavement');

  final String value;

  const LeaveReason(this.value);
}
