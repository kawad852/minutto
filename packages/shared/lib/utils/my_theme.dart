import '../shared.dart';

const kScreenMargin = 16.0;
const kBurgerImage =
    "https://www.foodandwine.com/thmb/DI29Houjc_ccAtFKly0BbVsusHc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/crispy-comte-cheesburgers-FT-RECIPE0921-6166c6552b7148e8a8561f7765ddf20b.jpg";
const kProviderLogo =
    "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/McDonald%27s_square_2020.svg/1200px-McDonald%27s_square_2020.svg.png";

const kRadiusPrimary = 5.0;
const kRadiusSecondary = 10.0;
const kRadiusTertiary = 15.0;

const kMaxWidth = 600.0;

// ColorScheme get kColorScheme =>
//     ColorScheme.fromSeed(seedColor: Color(0xFF405f90), tertiary: Color(0xFF00696f));

const kMaxSmallDeviceWidth = 1000.0;

class MyTheme {
  static final String fontFamily = GoogleFonts.cairo().fontFamily!;
  // static var kColorScheme = ColorScheme.fromSeed(seedColor: Color(0xFF405f90));

  ThemeData materialTheme(BuildContext context, bool isLightTheme) {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: Color(0xFFFFFFFF),
      brightness: isLightTheme ? Brightness.light : Brightness.dark,
    );
    return ThemeData(
      colorScheme: colorScheme,
      brightness: colorScheme.brightness,
      useMaterial3: true,
      fontFamily: fontFamily,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: context.colorPalette.black,
          fontSize: 18,
          fontFamily: fontFamily,
          fontWeight: FontWeight.bold,
        ),
      ),
      bottomAppBarTheme: BottomAppBarThemeData(
        color: Colors.white,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
      ),
      scaffoldBackgroundColor: Colors.white,
      actionIconTheme: ActionIconThemeData(
        backButtonIconBuilder: (BuildContext context) {
          return IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
          );
        },
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: context.colorPalette.greyF5F,
        constraints: BoxConstraints(maxWidth: 600),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        isDense: true,
      ),
      dividerTheme: DividerThemeData(color: colorScheme.surfaceContainer),
      cardTheme: CardThemeData(
        color: colorScheme.onInverseSurface,
        margin: EdgeInsets.zero,
        elevation: 0,
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(side: BorderSide(color: colorScheme.surfaceContainer)),
      ),
      chipTheme: ChipThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(kRadiusSecondary)),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: Color(0xFFB2DCBC),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
