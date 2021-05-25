import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mytheme {
  static ThemeData LightTheme(BuildContext context) => ThemeData(
        scaffoldBackgroundColor: Color(0xfff5f5f5),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            onPrimary: Colors.white,
            primary: Colors.red,
          ),
        ),
        cardColor: Colors.white,
        canvasColor: Color(0xfff5f5f5),
        accentColor: Colors.black,
        buttonColor: Colors.red,
        fontFamily: GoogleFonts.poppins().fontFamily,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.red, foregroundColor: Colors.white),
      );

  static ThemeData DarkTheme(BuildContext context) => ThemeData(
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.red, foregroundColor: Colors.white),
      cardColor: Colors.white,
      accentColor: Colors.white,
      scaffoldBackgroundColor: Colors.black,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.white,
          primary: Colors.red,
        ),
      ),
      canvasColor: Colors.black45,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      fontFamily: GoogleFonts.poppins().fontFamily);
}
