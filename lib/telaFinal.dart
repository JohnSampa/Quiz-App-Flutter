import 'package:flutter/material.dart';
import 'package:quiz_app/logicaQuiz.dart';

class FinalScreen extends StatelessWidget{
  int acertos = 0;

  FinalScreen({super.key, required this.acertos});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fim Quiz Musical'),
      ),

      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('$acertos'),
          ],
        ),
      ),
    );
  }

}