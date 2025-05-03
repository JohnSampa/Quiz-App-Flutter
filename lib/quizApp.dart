import 'package:flutter/material.dart';
import 'package:quiz_app/homePage.dart';
import 'package:quiz_app/themes.dart';

class QuizApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz Musical',
      theme: themeQuiz,
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}