import 'package:flutter_svg_provider/flutter_svg_provider.dart' as sv;
import 'package:minutto_user/screens/base/app_nav_bar.dart';
import 'package:shared/shared.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  int _currentIndex = 0;
  late PageController _pageController;
  List<String> mainImage = [MyIcons.intro0, MyIcons.intro1, MyIcons.intro2];

  List<String> titleIntro() {
    return [
      context.appLocalization.introTitle0,
      context.appLocalization.introTitle1,
      context.appLocalization.introTitle2,
    ];
  }

  List<String> discIntro() {
    return [
      context.appLocalization.introDisc0,
      context.appLocalization.introDisc1,
      context.appLocalization.introDisc2,
    ];
  }

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
        title: CustomSmoothIndicator(
          count: 3,
          index: _currentIndex,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                context.appLocalization.skip,
                style: TextStyle(
                  color: context.colorPalette.black,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: InkWell(
        onTap: () {
          if (_pageController.page == 2) {
            context.navigateAndRemoveUntil(
              (context) => const AppNavBar(),
            );
          } else {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeInExpo,
            );
          }
        },
        child: Container(
          width: 50,
          height: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: context.colorPalette.blueB2D,
            borderRadius: BorderRadius.circular(kRadiusSecondary),
          ),
          child: const Icon(Icons.arrow_forward_ios),
        ),
      ),
      body: PageView.builder(
        controller: _pageController,
        itemCount: 3,
        onPageChanged: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: sv.Svg(mainImage[index]),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              spacing: 16,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  titleIntro()[index],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: context.colorPalette.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  discIntro()[index],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: context.colorPalette.grey333,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 100),
              ],
            ),
          );
        },
      ),
    );
  }
}
