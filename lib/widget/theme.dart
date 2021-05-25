import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class Mytheme {
  static ThemeData LightTheme(BuildContext context) => ThemeData(
      scaffoldBackgroundColor: Color(0xfff5f5f5),
      primarySwatch: Colors.red,
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: AppBarTheme(
        color: Color(0xfff5f5f5),
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      ));
  static ThemeData DarkTheme(BuildContext context) => ThemeData(
      scaffoldBackgroundColor: Colors.black12,
      primarySwatch: Colors.deepOrange,
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: AppBarTheme(
        color: Colors.black,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
      ));
}
