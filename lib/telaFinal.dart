import 'package:flutter/material.dart';
import 'package:quiz_app/logicaQuiz.dart';
import 'package:quiz_app/quizScreen.dart';

class FinalScreen extends StatelessWidget{
  int acertos = 0;

  FinalScreen({super.key, required this.acertos});

  LogicaQuiz logica = LogicaQuiz();

  void reset (){
    logica.reset();
  }

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
            Text('Quntidade de Acertos'),
            Text('$acertos'),
            SizedBox(height: 90,),
            ElevatedButton(
              onPressed: (){
                reset();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context)=>QuizScreen())
                  );
              },
               child: Text(
                'Resetar Quiz'
               )
               )
          ],
        ),
      ),
    );
  }

}