import 'package:minutto_user/minutto_user.dart';
import 'package:shared/shared.dart';

class StaffManagementScreen extends StatefulWidget {
  const StaffManagementScreen({super.key});

  @override
  State<StaffManagementScreen> createState() => _StaffManagementScreenState();
}

class _StaffManagementScreenState extends State<StaffManagementScreen> {
  late Query<UserModel> _query;

  void _initialize() {
    _query = FirebaseFirestore.instance.users.whereCompanyId.orderByCreatedAtDesc;
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
        centerTitle: false,
        surfaceTintColor: Colors.transparent,
        title: Text(context.appLocalization.employees),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return StaffDialog();
                },
              );
            },
            icon: const CustomSvg(MyIcons.addIcon),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: Align(
        alignment: AlignmentDirectional.bottomStart,
        child: FloatingActionButton.extended(
          onPressed: () {
            context.navigate((context) => const StaffInputScreen());
          },
          backgroundColor: context.colorPalette.blueB2D,
          label: Text(
            context.appLocalization.addNewEmployee,
            style: TextStyle(
              color: context.colorPalette.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
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
                  if (snapshot.docs.isEmpty) {
                    return const EmptyWidget();
                  }
                  return ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(height: 15),
                    itemCount: snapshot.docs.length,
                    itemBuilder: (context, index) {
                      final user = snapshot.docs[index].data();
                      return StaffCard(
                        user: user,
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
