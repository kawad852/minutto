import 'package:fire_portal/portal_table.dart';
import 'package:shared/shared.dart';

class AdminsTable extends StatefulWidget {
  const AdminsTable({super.key});

  @override
  State<AdminsTable> createState() => _AdminsTableState();
}

class _AdminsTableState extends State<AdminsTable> {
  late Query<UserModel> _query;
  late Future<QuerySnapshot<RoleModel>> _rolesFuture;

  CollectionReference<UserModel> get _collectionRef => kFirebaseInstant.users;

  void _initializeQuery() {
    _query = _collectionRef.orderByCreatedAtDesc.where(MyFields.roleId, isNull: false);
    _rolesFuture = kFirebaseInstant.roles.orderByCreatedAtDesc.get();
  }

  @override
  void initState() {
    super.initState();
    _initializeQuery();
  }

  @override
  Widget build(BuildContext context) {
    return PortalTable(
      tableTitle: context.appLocalization.admins,
      query: _query,
      data: UserModel(),
      reference: _collectionRef.doc(),
      columns: [DataColumn(label: Text(context.appLocalization.displayName))],
      cellsBuilder: (index, snapshot) {
        final queryDocSnapshot = snapshot.docs[index];
        final data = queryDocSnapshot.data();
        return [DataCell(Text(data.name))];
      },
      onSave: (ref, data) async {
        if (data.roleId == null) {
          context.showSnackBar(context.appLocalization.generalError);
          return;
        }
        var reference = ref;
        if (ref == null) {
          final id = await context.userProvider.createAuthUser(
            data.email,
            data.password!,
            admin: true,
          );
          reference = ref ?? _collectionRef.doc(id);
          data = data.copyWith(id: id, createdAt: kNowDate);
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
          BlitzBuilder.future(
            future: _rolesFuture,
            onComplete: (context, snapshot) {
              return DropDownEditor(
                value: data.roleId,
                onChanged: (value) {
                  setState(() {
                    data.roleId = value;
                  });
                },
                title: context.appLocalization.roles,
                items: snapshot.data!.docs.map((element) {
                  return DropdownMenuItem(value: element.id, child: Text(element.data().name));
                }).toList(),
              );
            },
          ),
        ];
      },
    );
  }
}
