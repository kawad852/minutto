import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class ShiftManagementScreen extends StatefulWidget {
  const ShiftManagementScreen({super.key});

  @override
  State<ShiftManagementScreen> createState() => _ShiftManagementScreenState();
}

class _ShiftManagementScreenState extends State<ShiftManagementScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        centerTitle: false,
        title: Text(context.appLocalization.shiftManagement),
        actions: [
          IconButton(
            onPressed: () {
              context.navigate(
                (context) => const ShiftInputScreen(),
              );
            },
            icon: const CustomSvg(MyIcons.addIcon),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          spacing: 15,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WidgetTitle(
              title: context.appLocalization.branch,
              child: DropDownEditor<String>(
                items: [
                  DropdownMenuItem(value: 'سوريا', child: Text('سوريا')),
                  DropdownMenuItem(value: 'الاردن', child: Text('الاردن')),
                ],
                onChanged: (value) {},
                title: context.appLocalization.choose,
                value: null,
              ),
            ),
            Container(
              width: double.infinity,
              height: 55,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: context.colorPalette.grey919),
                borderRadius: BorderRadius.circular(kRadiusSecondary),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "12 مارس 2023 - 12 يوليو 2025",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: context.colorPalette.blue475,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  CustomSvg(
                    MyIcons.calander,
                    color: context.colorPalette.black,
                  ),
                ],
              ),
            ),
            CustomCalender(),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(height: 12),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return ShiftCard();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
