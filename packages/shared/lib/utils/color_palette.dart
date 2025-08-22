import 'package:flutter/material.dart';

class ColorPalette {
  final BuildContext _context;

  ColorPalette(this._context);

  static of(BuildContext context) => ColorPalette(context);

  bool get _isLightTheme => true;

  ///common
  Color get white => Colors.white;
  Color get black => Colors.black;

  Color get black2D2 => const Color(0xFF2D2D2F);

  //blue
  Color get blue091 => const Color(0xFF091C2B);
  Color get blueB2D => const Color(0xFFB2DCBC);

  //red
  Color get redD42 => const Color(0xFFD42F55);

  //grey
  Color get greyF7F => const Color(0xFFF7F7F7);
  Color get grey8F8 => const Color(0xFF8F8787);

  //yellow
  Color get yellowFDF => const Color(0xFFFDF2BB);

  //green
  Color get greenB2D => const Color(0xFFB2DCBC);

}
