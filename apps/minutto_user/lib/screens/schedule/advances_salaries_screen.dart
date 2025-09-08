import 'package:minutto_user/minutto_user.dart';
import 'package:shared/shared.dart';

class AdvancesSalariesScreen extends StatefulWidget {
  const AdvancesSalariesScreen({super.key});

  @override
  State<AdvancesSalariesScreen> createState() => _AdvancesSalariesScreenState();
}

class _AdvancesSalariesScreenState extends State<AdvancesSalariesScreen> {
  late Query<RequestModel> _query;

  void _initialize() {
    _query = RequestHelper.instance.fetchQuery(
      status: StatusEnum.accepted.value,
      collectionPath: MyCollections.salaryAdvances,
      showActions: true,
    );
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
        surfaceTintColor: Colors.transparent,
        title: Text(context.appLocalization.advances),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          spacing: 20,
          children: [
            CustomTextField.text(
              onChanged: (value) {},
              prefixIcon: IconButton(
                onPressed: null,
                icon: const CustomSvg(MyIcons.search),
              ),
              suffixIcon: const CustomSvg(MyIcons.filter),
              hintText: context.appLocalization.searchByEmployeeName,
            ),
            Expanded(
              child: BlitzBuilder.query(
                query: _query,
                onComplete: (context, snapshot, _) {
                  return ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(height: 12),
                    itemCount: snapshot.docs.length,
                    itemBuilder: (context, index) {
                      final salaryAdvance = snapshot.docs[index].data();
                      return SalaryAdvanceCard(
                        request: salaryAdvance,
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
