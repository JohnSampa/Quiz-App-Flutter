import 'package:flutter/material.dart';
import 'package:quiz_app/homePage.dart';
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
    int porcentagem = acertos * 10;
    return Scaffold(
      appBar: AppBar(
        title: Text('Fim Quiz Musical'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 460,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(40)
                    ),
                    child: Center(
                      child: Text(
                        'Porcentagem de acertos',
                        style: TextStyle(
                          fontSize: 27,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 300,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(60)
                ),
                child: Center(
                  child: Text(
                    '$porcentagem%',
                    style: TextStyle(
                      fontSize: 100,
                      color: const Color.fromARGB(255, 103, 236, 107)
                    ),
                  ),
                ),
              ),
              SizedBox(height: 90,),
              ElevatedButton(
                onPressed: (){
                  reset();
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context)=>HomePage())
                    );
                },
                 child: Text(
                  'Resetar Quiz'
                 )
                 )
            ],
          ),
        ),
      ),
    );
  }

}