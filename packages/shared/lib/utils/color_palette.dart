import 'package:flutter/material.dart';

class ColorPalette {
  final BuildContext _context;

  ColorPalette(this._context);

  static of(BuildContext context) => ColorPalette(context);

  bool get _isLightTheme => true;

  ///common
  Color get white => Colors.white;
  Color get black => Colors.black;

  //blue
  Color get blue091 => const Color(0xFF091C2B);
  Color get blueB2D => const Color(0xFFB2DCBC);

}
