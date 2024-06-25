import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

ThemeData kAppLightTheme = ThemeData.from(
  colorScheme: kLightColorSchema,
  textTheme: GoogleFonts.notoSansTextTheme(),
  useMaterial3: true,
);

ThemeData applyLptTheme(ThemeData theme) {
  return theme.copyWith(
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: ThemeColor.primaryColor,
    ),
    splashColor: ThemeColor.neutralDim.withOpacity(.2),
    highlightColor: ThemeColor.primaryColor.shade50,
  );
}
