import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class BranchesScreen extends StatefulWidget {
  const BranchesScreen({super.key});

  @override
  State<BranchesScreen> createState() => _BranchesScreenState();
}

class _BranchesScreenState extends State<BranchesScreen> {
  late Query<BranchModel> _query;

  FirebaseFirestore get _firebaseFirestore => FirebaseFirestore.instance;

  void _initialize() {
    _query = _firebaseFirestore.branches.orderByCreatedAtDesc.whereCompanyId;
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
        title: Text(context.appLocalization.branches),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: Align(
        alignment: AlignmentDirectional.bottomStart,
        child: FloatingActionButton.extended(
          onPressed: () {
            context.navigate((context) => const BranchInputScreen());
          },
          backgroundColor: context.colorPalette.blueB2D,
          label: Text(
            context.appLocalization.addBranch,
            style: TextStyle(
              color: context.colorPalette.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: BlitzBuilder.query(
        query: _query,
        onComplete: (context, snapshot, _) {
          if (snapshot.docs.isEmpty) {
            return const EmptyWidget();
          }
          return ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(height: 20),
            itemCount: snapshot.docs.length,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            itemBuilder: (context, index) {
              final branch = snapshot.docs[index].data();
              return BranchCard(
                branch: branch,
              );
            },
          );
        },
      ),
    );
  }
}
