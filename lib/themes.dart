import 'package:flutter/material.dart';

final themeQuiz = ThemeData(
  primaryColor: Colors.blueAccent,
  scaffoldBackgroundColor: const Color.fromARGB(251, 226, 237, 237),

  appBarTheme: AppBarTheme(
    color: Colors.blueAccent,
    centerTitle: true,
    titleTextStyle: TextStyle(
      fontSize: 35,
      color: Colors.white,
    )
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blueAccent,
      foregroundColor: Colors.white,
      elevation: 10,
      minimumSize: Size(450, 60),
      textStyle: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),

  textTheme: TextTheme(
    bodyMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    )
  )
);