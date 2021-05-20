import 'package:catalog/pages/home_page.dart';
import 'package:catalog/pages/login_page.dart';
import 'package:catalog/widget/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //buildContext paramters
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: Mytheme.LightTheme(context),
      debugShowCheckedModeBanner: false,
      darkTheme: Mytheme.DarkTheme(context),
      routes: {
        "/": (context) => Homepage(),
        "/home": (context) => Homepage(),
      },
    );
  }
}
