enum AttendanceEnum {
  checkIn('checkIn'),
  checkOut('checkOut'),
  breakIn('breakIn'),
  breakOut('breakOut');

  final String value;

  const AttendanceEnum(this.value);
}
