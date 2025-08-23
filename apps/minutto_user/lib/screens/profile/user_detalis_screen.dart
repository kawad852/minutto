import 'package:shared/shared.dart';

class UserDetalisScreen extends StatefulWidget {
  const UserDetalisScreen({super.key});

  @override
  State<UserDetalisScreen> createState() => _UserDetalisScreenState();
}

class _UserDetalisScreenState extends State<UserDetalisScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.appLocalization.employeeData)),
      bottomNavigationBar: BottomAppBar(
        child: StretchedButton(
          onPressed: () {},
          child: Text(
            context.appLocalization.saveModifications,
            style: TextStyle(
              color: context.colorPalette.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 120,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: 0,
                  child: BaseNetworkImage(
                    "",
                    width: 110,
                    height: 110,
                    radius: 7,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: GestureDetector(
                    onTap: () {},
                    child: CustomSvg(MyIcons.edit),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                Text(
                  "صهيب البكار",
                  style: TextStyle(
                    color: context.colorPalette.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    "مصمم جرافيك",
                    style: TextStyle(
                      color: context.colorPalette.black,
                      fontSize: 14,
                    ),
                  ),
                ),
                Text(
                  "شركة نستطيع لتكنلوجيا المعلومات",
                  style: TextStyle(
                    color: context.colorPalette.greyA9A,
                    fontSize: 14,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    children: [
                      Expanded(
                        child: CustomTextField.text(
                          onChanged: (value) {},
                          labelText: context.appLocalization.firstName,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: CustomTextField.text(
                          onChanged: (value) {},
                          labelText: context.appLocalization.lastName,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomTextField.text(
                        onChanged: (value) {},
                        labelText: context.appLocalization.jobTitle,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: CustomTextField.text(
                        onChanged: (value) {},
                        labelText: context.appLocalization.basicSalary,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    children: [
                      Expanded(
                        child: CustomTextField.text(
                          onChanged: (value) {},
                          labelText: context.appLocalization.dateOfBirth,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: CustomTextField.text(
                          onChanged: (value) {},
                          labelText: context.appLocalization.dateStartWork,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomTextField.text(
                        onChanged: (value) {},
                        labelText: context.appLocalization.contractDuration,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: CustomTextField.text(
                        onChanged: (value) {},
                        labelText: context.appLocalization.expirationDateContract,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: CustomTextField.email(context, onChanged: (value) {}),
                ),
                DropDownEditor<String>(
                  items: [
                    DropdownMenuItem(value: 'سوريا', child: Text('سوريا')),
                    DropdownMenuItem(value: 'الاردن', child: Text('الاردن')),
                  ],
                  onChanged: (value) {},
                  label: context.appLocalization.country,
                  value: null,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: CustomTextField.phone(
                    context,
                    code: null,
                    onChanged: (value) {},
                    onCodeSelected: (value) {},
                  ),
                ),
                CustomTextField.text(
                  onChanged: (value) {},
                  labelText: context.appLocalization.nameBankSalary,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: CustomTextField.text(
                    onChanged: (value) {},
                    labelText: context.appLocalization.bankBranch,
                  ),
                ),
                CustomTextField.text(
                  onChanged: (value) {},
                  labelText: context.appLocalization.accountNumberIBAN,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
