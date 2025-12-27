import 'package:flutter/material.dart';

ThemeData theme = ThemeData(
  iconTheme: IconThemeData(color: Color.fromRGBO(255, 255, 255, 1.0)),
  textTheme: TextTheme(
    // for  link text
    headlineMedium: TextStyle(
      color: Color.fromRGBO(140, 197, 66, 1.0),
      fontSize: 13,
    ),
    headlineLarge: TextStyle(
      color: Color.fromRGBO(0, 136, 204, 1.0),
      fontSize: 12,
    ),
    // for app bar text
    titleLarge: TextStyle(
      color: Color.fromRGBO(255, 255, 255, 1.0),
      fontSize: 20,
    ),
    // for normal text
    labelMedium: TextStyle(
      color: const Color.fromARGB(236, 0, 0, 0),
      fontSize: 15,
    ),
    labelSmall: TextStyle(color: Colors.black26, fontSize: 15),
    // for white text
    displayMedium: TextStyle(
      color: Color.fromRGBO(255, 255, 255, 1.0),
      fontSize: 15,
    ),
  ),
  colorScheme: ColorScheme.light(
    primary: Color.fromRGBO(140, 197, 66, 1.0),
    secondary: Color.fromRGBO(255, 255, 255, 1.0),
    onSecondary: Color.fromRGBO(213, 214, 212, 1),
    tertiary: Color.fromRGBO(64, 68, 67, 1.0),
    outline: Color.fromRGBO(0, 136, 204, 1.0),
    error: Color.fromRGBO(255, 0, 0, 1.0),
    scrim: Color.fromRGBO(255, 204, 0, 1.0),
    shadow: Color.fromARGB(255, 255, 179, 2),
  ),
);
