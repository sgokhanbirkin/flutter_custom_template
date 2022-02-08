import 'package:flutter/material.dart';

class ThemeYellow {
  final ThemeData yellowTheme = ThemeData(
    primaryColor: Colors.yellow.shade100,
    primaryColorDark: Colors.yellow.shade200,
    primaryColorLight: Colors.yellow.shade300,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
    ),
    bottomAppBarColor: Colors.white12,
    textTheme: const TextTheme(
      headline1: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 32.0, color: Colors.black),
      headline2: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 28.0, color: Colors.black),
      headline3: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 24.0, color: Colors.black),
      headline4: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.black),
      headline5: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 16.0, color: Colors.black),
      headline6: TextStyle(
          fontWeight: FontWeight.normal, fontSize: 12.0, color: Colors.black),
      subtitle1: TextStyle(
          fontWeight: FontWeight.normal, fontSize: 16.0, color: Colors.black),
      subtitle2: TextStyle(
          fontWeight: FontWeight.normal, fontSize: 12.0, color: Colors.black),
      bodyText1: TextStyle(
          fontWeight: FontWeight.normal, fontSize: 16.0, color: Colors.black),
      bodyText2: TextStyle(
          fontWeight: FontWeight.normal, fontSize: 12.0, color: Colors.black),
    ),
  );
}
