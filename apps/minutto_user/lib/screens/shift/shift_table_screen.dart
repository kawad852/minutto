import 'package:minutto_user/screens/shift/widgets/shift_card.dart';
import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class ShiftTableScreen extends StatefulWidget {
  const ShiftTableScreen({super.key});

  @override
  State<ShiftTableScreen> createState() => _ShiftTableScreenState();
}

class _ShiftTableScreenState extends State<ShiftTableScreen> {
  late Query<ShiftModel> _query;

  void _initialize() {
    _query = FirebaseFirestore.instance.shifts.orderByCreatedAtDesc.whereCompanyId;
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
        title: Text(context.appLocalization.shiftTable),
      ),
      bottomNavigationBar: BottomButton(
        onPressed: () {
          context.navigate((context) => const ShiftInputScreen());
        },
        backgroundColor: context.colorPalette.blue091,
        textColor: context.colorPalette.white,
        title: context.appLocalization.addShift,
      ),
      body: BlitzBuilder.query(
        query: _query,
        onComplete: (context, snapshot, _) {
          if (snapshot.docs.isEmpty) {
            return const EmptyWidget();
          }
          return ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            itemCount: snapshot.docs.length,
            itemBuilder: (context, index) {
              if (snapshot.isLoadingMore(index)) {
                return const BaseLoader();
              }
              final shift = snapshot.docs[index].data();
              return ShiftCard(
                shift: shift,
              );
            },
          );
        },
      ),
    );
  }
}
