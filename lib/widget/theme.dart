import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class Mytheme {
  static ThemeData LightTheme(BuildContext context) => ThemeData(
      canvasColor: Color(0xfff5f5f5),
      brightness: Brightness.dark,
      cardColor: Colors.white,
      accentColor: Colors.black,
      buttonColor: Colors.red,
      fontFamily: GoogleFonts.poppins().fontFamily);
  static ThemeData DarkTheme(BuildContext context) => ThemeData(
      scaffoldBackgroundColor: Colors.amber,
      canvasColor: Color(0xfff5f5f5),
      accentColor: Colors.white,
      buttonColor: Colors.red,
      fontFamily: GoogleFonts.poppins().fontFamily);
}
