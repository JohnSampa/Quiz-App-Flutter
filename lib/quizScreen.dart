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
  int? indiceBut;

  @override
  void initState(){
    super.initState();
    timer = Timer.periodic(Duration(seconds: 1), (timer){
       if(cont==0){
        timer.cancel();
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder:(context)=>FinalScreen(acertos:logica.acertos,timer: cont))
            );
        }else if(mounted){
          setState(() {
            cont--;
          });
        }
    });
  }

  void proximaPergunta(){
    Future.delayed(Duration(seconds: 1),(){
    if(logica.pergunataAtual+1== logica.questions.length){
      timer!.cancel();
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder:(context)=>FinalScreen(acertos: logica.acertos,timer: cont))
      );
    }else{
        setState(() {
        logica.pergunataAtual++;
        indiceBut = null;
        cont = 30;
        });
    }
    });
  }

  void corretor(bool resposta,int index){
    setState(() {
      logica.corretor(resposta);
      indiceBut = index;
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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: BoxDecoration(
                   color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(40)
                ),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Questão ${logica.pergunataAtual + 1}',
                        style: TextStyle(
                          color: Colors.white
                        ),
                        ),
                          
                    ],
                  ),
                  SizedBox(
                    width: 100,
                    height: 60,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'lib/assets/relogio.png',
                        height: 40,
                      ),
                      Container(
                        width: 50,
                        height: 50,
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
                ],
                          ),
              ),
               Text(
                logica.questions[logica.pergunataAtual]['question'] as String,
              ),
              Image.asset(
                '${logica.questions[logica.pergunataAtual]['image']}',
                height: 300,

              ),
              ...(logica.questions[logica.pergunataAtual]['resp'] 
                    as List<Map<String, Object>>)
              .asMap()
              .entries
              .map((questions){
                int index = questions.key;
                var option = questions.value;
                Color cor = Colors.blueAccent;

                if(indiceBut==index){
                  option['correta']as bool?cor = Colors.green:cor = Colors.red;
                }else{
                  cor = Colors.blueAccent; 
                }
        
                return ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: cor
                  ),
                  onPressed: (){
                    corretor(option['correta']as bool,index);
                    proximaPergunta();
                  },
                  child: Center(
                    child: Text(
                      option['option']as String
                    ),
                  )
                  );
              }
              )
            ],
                    ),
          ),
        ),
    );
  }

}