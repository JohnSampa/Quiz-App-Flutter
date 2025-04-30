import 'package:flutter/material.dart';
import 'package:quiz_app/quizScreen.dart';
import 'package:quiz_app/themes.dart';

class QuizApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz Do John',
      theme: themeQuiz,
      home: QuizScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
    
}