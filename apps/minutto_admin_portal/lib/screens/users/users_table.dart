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
    final userProvider = context.userProvider;
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
          final uid = userProvider.getToken(data.phoneNumber, data.phoneNumberCountryCode);
          final results = await userProvider.generateCustomToken(uid);
          final customToken = results.data as String;
          print("id:: $uid");
          print("customToken:: $customToken");
          reference = ref ?? _collectionRef.doc(uid);
          data = data.copyWith(
            id: uid,
            createdAt: kNowDate,
            jobTitle: context.appLocalization.admin,
            role: RoleEnum.admin.value,
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
          PhoneEditor(
            initialValue: data.phoneNumber,
            code: data.phoneNumberCountryCode,
            onChanged: (value) => data.phoneNumber = value!,
            onCodeSelected: (value) => data.phoneNumberCountryCode = value,
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
                items: (snapshot.data?.docs ?? []).map((element) {
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
