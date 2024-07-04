import 'package:flutter/material.dart';

const _primaryColorValue = 0xFF5396E4;

class ThemeColor {
  // primary color
  static const primaryColor = MaterialColor(_primaryColorValue, {
    50: Color(0xFFEEF5FC),
    100: Color(0xFFDDEAFA),
    200: Color(0xFFBAD5F4),
    300: Color(0xFF98C0EF),
    400: Color(0xFF75ABE9),
    500: Color(_primaryColorValue),
    600: Color(0xFF4B87CD),
    700: Color(0xFF4278B6),
    800: Color(0xFF3A69A0),
    900: Color(0xFF294B72),
  });

  // black and white colors
  static const midWhite = Color(0xFFFAFAFA);
  static const white = Color(0xFFFFFFFF);
  static const black = Color(0xFF000000);
  static const transparent = Color(0x00000000);

// Background colors
  static const bgColor1 = Color(_primaryColorValue);
  static const bgColor2 = Color(0xFFF5F7FA);
  // static const bgColor2 = Color(0xFFF5F7FA);
  static const popupOverlay = Color.fromARGB(72, 0, 9, 19); // #000913 with 72%

  // These colours are used as supporting colors and
  // bring further visual balance in the designs.
  static const neutralDark = Color(0xFF000913);
  static const neutral = Color(0xFF3C454F);
  static const neutralDim = Color(0xFF78818B);
  static const neutralLight = Color(0xFFDCE5EF);
  static const neutralExtraLight = Color(0xFFEAEFF5);

  //apps color
  static const apptheame = Color(0xFFAD2524);
  static const profiletile = Color(0xFF8A8A8A);

  // These colours denote standard value states such as good, bad and warning.
  // Each color has the same basic meaning in all contexts.
  static const info = Color(0xFF2F80ED);
  static const success = Color(0xFF27AE60);
  static const warning = Color(0xFFE2B93B);
  static const error = Color(0xFFEB5757);

  static const teal = Color(0xFF00BFA5);
  static const indigo = Color(0xFF2962FF);
  static const pendingButton = Color(0xFFEE9204);
}

// ColorScheme kLightColorSchema = ColorScheme.fromSwatch(
//   brightness: Brightness.light,
//   backgroundColor: ThemeColor.bgColor2,
//   errorColor: ThemeColor.error,
//   primarySwatch: ThemeColor.primaryColor,
//   primaryColorDark: ThemeColor.primaryColor.shade800,
//   cardColor: ThemeColor.white,
//   accentColor: ThemeColor.primaryColor,
// );
ColorScheme kLightColorSchema = const ColorScheme(
  brightness: Brightness.light,
  primary: ThemeColor.primaryColor,
  onPrimary: ThemeColor.white,
  secondary: ThemeColor.primaryColor,
  onSecondary: ThemeColor.white,
  background: ThemeColor.bgColor2,
  onBackground: ThemeColor.neutralDim,
  surface: ThemeColor.white,
  onSurface: ThemeColor.black,
  error: ThemeColor.error,
  onError: ThemeColor.white,
);
