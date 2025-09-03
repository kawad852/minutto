import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class DepartmentsScreen extends StatefulWidget {
  const DepartmentsScreen({super.key});

  @override
  State<DepartmentsScreen> createState() => _DepartmentsScreenState();
}

class _DepartmentsScreenState extends State<DepartmentsScreen> {
  late Query<DepartmentModel> _query;

  void _initialize() {
    _query = getIt<FirebaseFirestore>().departments.whereCompanyId.orderByCreatedAtDesc;
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
        title: Text(context.appLocalization.departments),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: Align(
        alignment: AlignmentDirectional.bottomStart,
        child: FloatingActionButton.extended(
          onPressed: () {
            context.navigate((context) => const DepartmentInputScreen());
          },
          backgroundColor: context.colorPalette.blueB2D,
          label: Text(
            context.appLocalization.addDepartment,
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
              final department = snapshot.docs[index].data();
              return DepartmentCard(
                department: department,
              );
            },
          );
        },
      ),
    );
  }
}
