import 'package:fire_portal/portal_table.dart';
import 'package:shared/shared.dart';

class UsersTable extends StatefulWidget {
  const UsersTable({super.key});

  @override
  State<UsersTable> createState() => _UsersTableState();
}

class _UsersTableState extends State<UsersTable> {
  late Query<UserModel> _query;
  late Stream<QuerySnapshot<CompanyModel>> _companiesStream;

  CollectionReference<UserModel> get _collectionRef => kFirebaseInstant.users;

  void _initializeQuery() {
    _query = _collectionRef.orderByCreatedAtDesc.where(MyFields.companyId, isNull: false);
    _companiesStream = kFirebaseInstant.companies.orderByCreatedAtDesc.snapshots();
  }

  @override
  void initState() {
    super.initState();
    _initializeQuery();
  }

  @override
  Widget build(BuildContext context) {
    return PortalTable(
      tableTitle: context.appLocalization.users,
      query: _query,
      data: UserModel(role: RoleEnum.admin.value),
      reference: _collectionRef.doc(),
      columns: [DataColumn(label: Text(context.appLocalization.displayName))],
      cellsBuilder: (index, snapshot) {
        final queryDocSnapshot = snapshot.docs[index];
        final data = queryDocSnapshot.data();
        return [DataCell(Text(data.name))];
      },
      onSave: (ref, data) async {
        if (data.companyId.isEmpty) {
          context.showSnackBar(context.appLocalization.generalError);
          return;
        }
        var reference = ref;
        if (ref == null) {
          final id = await context.userProvider.createAuthUser(data.email, data.password!);
          reference = ref ?? _collectionRef.doc(id);
          data = data.copyWith(
            id: id,
            createdAt: kNowDate,
            email: data.email,
            jobTitle: context.appLocalization.admin,
          );
        }
        await reference!.set(data);
      },
      inputBuilder: (snapshot) {
        final data = snapshot;
        return [
          TextEditor(
            labelText: context.appLocalization.displayName,
            initialValue: data.name,
            onChanged: (value) {
              setState(() {
                data.name = value!;
              });
            },
          ),
          CustomTextField.email(
            context,
            initialValue: data.email,
            onChanged: (value) => data.email = value!,
          ),
          CustomTextField.password(
            context,
            initialValue: data.password,
            onChanged: (value) => data.password = value!,
          ),
          BlitzBuilder.stream(
            stream: _companiesStream,
            onComplete: (context, snapshot) {
              return DropDownEditor(
                value: data.companyId.isNotEmpty ? data.companyId : null,
                onChanged: (value) {
                  setState(() {
                    data.companyId = value!;
                  });
                },
                title: context.appLocalization.company,
                items: snapshot.data!.docs.map((element) {
                  return DropdownMenuItem(value: element.id, child: Text(element.data().name!));
                }).toList(),
              );
            },
          ),
        ];
      },
    );
  }
}
