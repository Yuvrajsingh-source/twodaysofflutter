import 'package:catalog/pages/cart_page.dart';
import 'package:catalog/pages/home_page.dart';
import 'package:catalog/pages/login_page.dart';
import 'package:catalog/widget/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final darktheme = false;
  @override
  Widget build(BuildContext context) {
    //buildContext paramters
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: Mytheme.LightTheme(context),
      debugShowCheckedModeBanner: false,
      darkTheme: Mytheme.DarkTheme(context),
      routes: {
        "/": (context) => Loginpage(),
        "/home": (context) => Homepage(),
        "/homedetails": (context) => Homepage(),
        "/cartdetails": (context) => Cartpage(),
      },
    );
  }
}
