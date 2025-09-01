import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class StaffInputScreen extends StatefulWidget {
  const StaffInputScreen({super.key});

  @override
  State<StaffInputScreen> createState() => _StaffInputScreenState();
}

class _StaffInputScreenState extends State<StaffInputScreen> {
  int _currentIndex = 0;
  late PageController _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.appLocalization.addStaff),
      ),
      bottomNavigationBar: BottomButton(
        onPressed: () {
          if (_currentIndex != 2) {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeInExpo,
            );
          }
        },
        title: _currentIndex == 2
            ? context.appLocalization.confirmAddition
            : context.appLocalization.next,
        backgroundColor: context.colorPalette.blue091,
        textColor: context.colorPalette.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: [
            LinearProgressIndicator(
              color: context.colorPalette.blueB2D,
              backgroundColor: context.colorPalette.greyF9F,
              value: (_currentIndex + 1) / 3,
              borderRadius: BorderRadius.circular(10),
              minHeight: 10,
            ),
            const SizedBox(height: 30),
            Expanded(
              child: PageView(
                controller: _pageController,
                physics: const NeverScrollableScrollPhysics(),
                onPageChanged: (value) {
                  setState(() {
                    _currentIndex = value;
                  });
                },
                children: [
                  PersonalData(),
                  WorkData(),
                  FinanceDate(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
