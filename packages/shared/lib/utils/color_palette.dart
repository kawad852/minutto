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
  Color get blueD8E => const Color(0xFFD8E8F5);

  //red
  Color get redD42 => const Color(0xFFD42F55);
  Color get redDF0 => const Color(0xFFDF0000);

  //grey
  Color get greyF7F => const Color(0xFFF7F7F7);
  Color get grey8F8 => const Color(0xFF8F8787);
  Color get greyE1D => const Color(0xFFE1DFDF);
  Color get greyA9A => const Color(0xFFA9A3A3);
  Color get greyF5F => const Color(0xFFF5F5F5);
  Color get greyFEF => const Color(0xFFFEFEFE);
  Color get grey4B4 => const Color(0xFF4B4B4B);

  //yellow
  Color get yellowFDF => const Color(0xFFFDF2BB);
  Color get yellowF69 => const Color(0xFFF69927);

  //green
  Color get greenB2D => const Color(0xFFB2DCBC);
  Color get green47A=> const Color(0xFF47A269);
  Color get green64B=> const Color(0xFF64B276);

}
