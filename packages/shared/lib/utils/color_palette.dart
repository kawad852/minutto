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

  Color get white80 => const Color(0xCCFFFFFF);
  Color get white20 => const Color(0x33FFFFFF);

  //blue
  Color get blue091 => const Color(0xFF091C2B);
  Color get blueB2D => const Color(0xFFB2DCBC);
  Color get blueD8E => const Color(0xFFD8E8F5);
  Color get blue475 => const Color(0xFF475467);
  Color get blue26 => const Color(0x26B2DCBC);
  Color get blue344 => const Color(0xFF344054);
  Color get blue73B => const Color(0x4073BE7B);
  Color get blue33 => const Color(0x33B2DCBC);

  //red
  Color get redD42 => const Color(0xFFD42F55);
  Color get redDF0 => const Color(0xFFDF0000);
  Color get redF95 => const Color(0xFFF95555);

  //grey
  Color get greyF7F => const Color(0xFFF7F7F7);
  Color get grey8F8 => const Color(0xFF8F8787);
  Color get greyE1D => const Color(0xFFE1DFDF);
  Color get greyA9A => const Color(0xFFA9A3A3);
  Color get greyF5F => const Color(0xFFF5F5F5);
  Color get greyFEF => const Color(0xFFFEFEFE);
  Color get grey4B4 => const Color(0xFF4B4B4B);
  Color get greyF9F => const Color(0xFFF9FAFB);
  Color get greyEAE => const Color(0xFFEAECF0);
  Color get grey333 => const Color(0xFF333333);
  Color get greyE8E => const Color(0xFFE8ECF4);
  Color get greyD0D => const Color(0xFFD0D5DD);
  Color get grey667 => const Color(0xFF667085);
  Color get grey8C8 => const Color(0xFF8C8C8C);
  Color get grey718 => const Color(0xFF718096);
  Color get greyABB => const Color(0x0DABBED1);
  Color get greyE9E => const Color(0xFFE9EAF0);
  Color get grey919 => const Color(0x59919EAB);
  Color get greyF2F => const Color(0xFFF2F2F2);


  //yellow
  Color get yellowFDF => const Color(0xFFFDF2BB);
  Color get yellowF69 => const Color(0xFFF69927);

  //green
  Color get greenB2D => const Color(0xFFB2DCBC);
  Color get green47A=> const Color(0xFF47A269);
  Color get green64B=> const Color(0xFF64B276);
  Color get green19B=> const Color(0xFF19B36E);

}
