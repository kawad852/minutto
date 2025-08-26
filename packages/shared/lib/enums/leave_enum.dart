enum LeaveRequestType {
  vacation('vacation'),
  leave('leave');

  final String value;

  const LeaveRequestType(this.value);
}

enum LeaveType {
  sick('sick'),
  bereavement('bereavement');

  final String value;

  const LeaveType(this.value);
}
