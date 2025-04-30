import 'package:flutter/material.dart';

final themeQuiz = ThemeData(
  primaryColor: Colors.blueAccent,
  scaffoldBackgroundColor: const Color.fromARGB(251, 226, 237, 237),

  appBarTheme: AppBarTheme(
    color: Colors.blueAccent,
    centerTitle: true,
    titleTextStyle: TextStyle(
      fontSize: 30,
      color: Colors.white,
    )
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blueAccent,
      foregroundColor: Colors.white,
      elevation: 10,
      minimumSize: Size(180, 60),
      textStyle: TextStyle(
        fontSize: 16,
      ),
    ),
  ),

  textTheme: TextTheme(
    bodyMedium: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    )
  )
);