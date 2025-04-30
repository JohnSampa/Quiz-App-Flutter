import 'package:flutter/material.dart';
import 'package:quiz_app/logicaQuiz.dart';

class QuizScreen extends StatefulWidget {
  @override
  State<QuizScreen> createState() {
    return _QuizScreenState();
  }
}

class _QuizScreenState extends State <QuizScreen> {
  final LogicaQuiz logica = LogicaQuiz();

  void proximaPergunata(bool resposta){
    setState(() {
      logica.corretor(resposta);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(
          'Quiz Musical',
        ),
      ),

      body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
             Text(
              logica.questions[logica.pergunataAtual]['question'] as String,
            ),
            ...(logica.questions[logica.pergunataAtual]['resp'] 
                  as List<Map<String, Object>>)
            .map((option){
              return ElevatedButton(
                onPressed: (){
                  proximaPergunata(option['correta']as bool);
                },
                child: Text(
                  option['option']as String
                )
                );
            }
            ),
          ],
        ),
        ),
    );
  }

}