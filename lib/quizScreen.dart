import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz_app/logicaQuiz.dart';
import 'package:quiz_app/telaFinal.dart';

class QuizScreen extends StatefulWidget {
  @override
  State<QuizScreen> createState() {
    return _QuizScreenState();
  }
}

class _QuizScreenState extends State <QuizScreen> {
  final LogicaQuiz logica = LogicaQuiz();
  Timer?timer;
  int cont = 30;

  @override
  void initState(){
    super.initState();
    timer = Timer.periodic(Duration(seconds: 1), (timer){
       if(cont==0){
        timer.cancel();
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder:(context)=>FinalScreen(acertos:logica.acertos))
            );
        }else if(mounted){
          setState(() {
            cont--;
          });
        }
    });
  }

  void proximaPergunta(){
    if(logica.pergunataAtual+1== logica.questions.length){
      timer!.cancel();
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder:(context)=>FinalScreen(acertos: logica.acertos))
      );
    }else{
      setState(() {
        logica.pergunataAtual++;
      });
    }
  }

  void corretor(bool resposta){
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                decoration: BoxDecoration(
                   color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(40)
                ),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Questão ${logica.pergunataAtual}',
                        style: TextStyle(
                          color: Colors.white
                        ),
                        ),
                    
                    ],
                  ),
                  SizedBox(
                    width: 100,
                    height: 70,
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(251, 226, 237, 237),
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Center(
                      child:  Text(
                        '$cont',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0, 0)
                          ),
                    ),
                    )
                  ),
                ],
                          ),
              ),
            ),
             Text(
              logica.questions[logica.pergunataAtual]['question'] as String,
            ),
            ...(logica.questions[logica.pergunataAtual]['resp'] 
                  as List<Map<String, Object>>)
            .map((option){
              return ElevatedButton(
                onPressed: (){
                  cont = 30;
                  corretor(option['correta']as bool);
                  proximaPergunta();
                },
                child: Text(
                  option['option']as String
                )
                );
            }
            )
          ],
        ),
        ),
    );
  }

}