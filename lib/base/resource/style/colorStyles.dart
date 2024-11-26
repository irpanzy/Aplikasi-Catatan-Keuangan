import 'package:flutter/material.dart';

class ColorStyle {
  static Color primaryColor50 = const Color(0xCCFF00);
  static Color primaryColor60 = const Color(0xB2E600);
  static Color primaryColor80 = const Color(0x3D4D00);

  static Color secondaryColor50 = const Color(0xE60000);
  static Color secondaryColor80 = const Color(0x7D0000);

  // Text Colors
  static const primaryTextBlack = Color.fromRGBO(0, 0, 0, 0.90); // Opacity 90%
  static const secondaryTextBlack =
      Color.fromRGBO(0, 0, 0, 0.70); // Opacity 70%
  static const primaryTextWhite = Color(0xFFFFFFFF);
  static Color incomeColor = const Color(0x8AB800);
  static Color expenditureColor = const Color(0xE60000);

  // Border Colors
  static const borderBlackActive = Color.fromRGBO(0, 0, 0, 0.80);
  static const borderBlack = Color.fromRGBO(0, 0, 0, 0.20);

  // Icon Colors
  static const iconActive = Color.fromRGBO(0, 0, 0, 0.90);
  static const iconNotActive = Color.fromRGBO(0, 0, 0, 0.40);
}
