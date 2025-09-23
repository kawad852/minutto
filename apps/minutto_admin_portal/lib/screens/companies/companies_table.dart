import 'package:fire_portal/portal_table.dart';
import 'package:shared/shared.dart';

class CompaniesTable extends StatefulWidget {
  const CompaniesTable({super.key});

  @override
  State<CompaniesTable> createState() => _CompaniesTableState();
}

class _CompaniesTableState extends State<CompaniesTable> {
  late Query<CompanyModel> _query;

  CollectionReference<CompanyModel> get _collectionRef => kFirebaseInstant.companies;

  void _initializeQuery() {
    _query = _collectionRef.orderByCreatedAtDesc;
  }

  @override
  void initState() {
    super.initState();
    _initializeQuery();
  }

  @override
  Widget build(BuildContext context) {
    return PortalTable(
      tableTitle: context.appLocalization.companies,
      query: _query,
      data: CompanyModel(createdAt: kNowDate),
      reference: _collectionRef.doc(),
      convertor: CompanyModel.fromJson,
      columns: [
        DataColumn(label: Text(context.appLocalization.createdAt)),
        DataColumn(label: Text(context.appLocalization.name)),
      ],
      cellsBuilder: (index, snapshot) {
        final queryDocSnapshot = snapshot.docs[index];
        final data = queryDocSnapshot.data();
        return [
          DataCell(Text(data.createdAt != null ? data.createdAt!.defaultFormat : "-")),
          DataCell(Text(data.name)),
        ];
      },
      onSave: (ref, data) async {
        final reference = ref ?? _collectionRef.doc();
        if (ref == null) {
          data = data.copyWith(id: reference.id, createdAt: kNowDate);
        }
        await reference.set(data);
      },
      inputBuilder: (snapshot) {
        final data = snapshot;
        return [
          TextEditor(
            labelText: context.appLocalization.name,
            initialValue: data.name,
            onChanged: (value) {
              setState(() {
                data.name = value!;
              });
            },
          ),
        ];
      },
    );
  }
}
