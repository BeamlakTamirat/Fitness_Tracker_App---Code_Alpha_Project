import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  primarySwatch: Colors.blue,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  textTheme: TextTheme(
    bodyText1: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
    bodyText2: TextStyle(fontSize: 16.0),
    headline1: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
    headline2: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.blue,
    textTheme: ButtonTextTheme.primary,
  ),
  appBarTheme: AppBarTheme(
    color: Colors.blue,
    textTheme: TextTheme(
      headline6: TextStyle(
          fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
    ),
  ),
);
