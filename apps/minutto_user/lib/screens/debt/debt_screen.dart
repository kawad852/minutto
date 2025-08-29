import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class DebtScreen extends StatefulWidget {
  const DebtScreen({super.key});

  @override
  State<DebtScreen> createState() => _DebtScreenState();
}

class _DebtScreenState extends State<DebtScreen> {
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
      bottomNavigationBar: BottomAppBar(
        child: StretchedButton(
          onPressed: () {
            context.navigate((context) => const DebtInputScreen());
          },
          child: Text(
            context.appLocalization.debtRequest,
            style: TextStyle(
              color: context.colorPalette.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DebtBubble(),
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
                      return DebtCard(
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
