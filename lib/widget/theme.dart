import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class Mytheme {
  static ThemeData LightTheme(BuildContext context) => ThemeData(
        scaffoldBackgroundColor: Color(0xfff5f5f5),
        primarySwatch: Colors.red,
        fontFamily: GoogleFonts.poppins().fontFamily,
      );
  static ThemeData DarkTheme(BuildContext context) => ThemeData(
        scaffoldBackgroundColor: Colors.black,
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.poppins().fontFamily,
      );
}
