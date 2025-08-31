import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class ShiftTableScreen extends StatefulWidget {
  const ShiftTableScreen({super.key});

  @override
  State<ShiftTableScreen> createState() => _ShiftTableScreenState();
}

class _ShiftTableScreenState extends State<ShiftTableScreen> {
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 247,
              margin: const EdgeInsets.only(bottom: 30),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                color: context.colorPalette.greyF9F,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "شيفت صباحي",
                          style: TextStyle(
                            color: context.colorPalette.blue091,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const CustomSvg(MyIcons.shiftEdit),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    height: 61,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: context.colorPalette.greyEAE),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            spacing: 3,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                context.appLocalization.startsFrom,
                                style: TextStyle(
                                  color: context.colorPalette.blue475,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                "08:00 AM",
                                style: TextStyle(
                                  color: context.colorPalette.blue475,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            spacing: 3,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                context.appLocalization.endsIn,
                                style: TextStyle(
                                  color: context.colorPalette.blue475,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                "08:00 AM",
                                style: TextStyle(
                                  color: context.colorPalette.blue475,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  WidgetTitle(
                    title: context.appLocalization.branches,
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 13,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(color: context.colorPalette.greyEAE),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        spacing: 5,
                        children: [
                          Expanded(
                            child: Text(
                              context.appLocalization.branchName,
                              style: TextStyle(
                                color: context.colorPalette.blue475,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "الفرع الرئيسي ",
                              style: TextStyle(
                                color: context.colorPalette.blue475,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                            child: ListView.builder(
                              itemCount: 7,
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              physics: const NeverScrollableScrollPhysics(),
                              padding: EdgeInsets.zero,
                              itemBuilder: (context, index) {
                                return const Align(
                                  widthFactor: 0.5,
                                  child: BaseNetworkImage(
                                    "",
                                    width: 24,
                                    height: 24,
                                    shape: BoxShape.circle,
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
