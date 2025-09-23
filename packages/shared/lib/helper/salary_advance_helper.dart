import 'package:shared/shared.dart';

class SalaryAdvanceHelper {
  SalaryAdvanceHelper._internal();
  static final SalaryAdvanceHelper instance = SalaryAdvanceHelper._internal();

  Future<(double basicSalary, double takenAmount, double maxAmount, double remainingAmount)>
  getTakenAmountThisMonth() async {
    final user = MySharedPreferences.user!;
    final basicSalary = user.basicSalary;
    final nowDate = DateTime.now();
    final firstDayOfThisMonthDate = nowDate.copyWith(day: 1);
    final filter = Filter.and(
      firstDayOfThisMonthDate.dateFilter(
        endDate: nowDate,
      ),
      Filter(MyFields.userId, isEqualTo: user.id),
    );
    final takenAmount = await AggregationService.instance
        .getRequestsCount(
          MyCollections.salaryAdvances,
          f: filter,
          aggregateField1: sum(MyFields.amount),
        )
        .then((value) => value.getSum(MyFields.amount) ?? 0.0);

    final maxAmount = basicSalary * 0.30;
    final remainingAmount = maxAmount - takenAmount;
    return (basicSalary, takenAmount, maxAmount, remainingAmount);
  }
}
