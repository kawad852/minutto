import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class SalaryAdvanceScreen extends StatefulWidget {
  const SalaryAdvanceScreen({super.key});

  @override
  State<SalaryAdvanceScreen> createState() => _SalaryAdvanceScreenState();
}

class _SalaryAdvanceScreenState extends State<SalaryAdvanceScreen> {
  late Query<SalaryAdvanceModel> _query;

  void _initialize() {
    _query = FirebaseFirestore.instance.salaryAdvances.orderByCreatedAtDesc.whereUserId;
  }

  @override
  void initState() {
    super.initState();
    _initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.appLocalization.debtRequests,
        ),
      ),
      bottomNavigationBar: BottomButton(
        onPressed: () {
          context.navigate((context) => const SalaryAdvanceInputScreen());
        },
        title: context.appLocalization.debtRequest,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AdvanceBubble(),
            Text(
              context.appLocalization.ordersRecord,
              style: TextStyle(
                color: context.colorPalette.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: BlitzBuilder.query(
                query: _query,
                onComplete: (context, snapshot, _) {
                  if (snapshot.docs.isEmpty) {
                    return const EmptyWidget();
                  }
                  return ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(height: 15),
                    itemCount: snapshot.docs.length,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    itemBuilder: (context, index) {
                      if (snapshot.isLoadingMore(index)) {
                        return const BaseLoader();
                      }
                      final salaryAdvance = snapshot.docs[index].data();
                      return AdvanceCard(
                        salaryAdvance: salaryAdvance,
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
