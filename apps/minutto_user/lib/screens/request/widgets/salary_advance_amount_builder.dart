import 'package:shared/shared.dart';

class SalaryAdvanceAmountBuilder extends StatefulWidget {
  const SalaryAdvanceAmountBuilder({super.key});

  @override
  State<SalaryAdvanceAmountBuilder> createState() => _SalaryAdvanceAmountBuilderState();
}

class _SalaryAdvanceAmountBuilderState extends State<SalaryAdvanceAmountBuilder> {
  late Future<(double basicSalary, double takenAmount, double maxAmount, double remainingAmount)>
  _future;
  final user = MySharedPreferences.user!;

  void _initialize() {
    _future = SalaryAdvanceHelper.instance.getTakenAmountThisMonth();
  }

  @override
  void initState() {
    super.initState();
    _initialize();
  }

  @override
  Widget build(BuildContext context) {
    return BlitzBuilder.future(
      future: _future,
      onComplete: (context, snapshot) {
        final data = snapshot.data ?? (0, 0, 0, 0);
        final maxAmount = data.$3;
        final remainingAmount = data.$4;
        return Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: context.appLocalization.allowedAdvanceMessage(
                  context.currency,
                  maxAmount,
                ),
              ),
              const TextSpan(text: "\n\n"),
              TextSpan(
                text: context.appLocalization.remainingAmountLabel(
                  remainingAmount,
                  context.currency,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
