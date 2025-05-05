import 'package:flutter/material.dart';
import 'package:quiz_app/homePage.dart';
import 'package:quiz_app/logicaQuiz.dart';

class FinalScreen extends StatelessWidget{
  int acertos = 0;
  int timer = 0;

  FinalScreen({super.key, required this.acertos,required this.timer});

  LogicaQuiz logica = LogicaQuiz();

  void reset (){
    logica.reset();
  }

   Color corText(int acertos){
    if(acertos<5){
      return const Color.fromARGB(255, 255, 17, 0);
    }else if(acertos>=5 && acertos<8){
      return const Color.fromARGB(255, 253, 229, 15);
    }else{
      return Colors.green;
    }
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
                        timer==0?'Seu tempo acabou':'Porcentagem de acertos',
                        style: TextStyle(
                          fontSize: 27,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              timer!=0?Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                  color: corText(acertos),
                  borderRadius: BorderRadius.circular(60)
                ),
                child: Center(
                  child: Text(
                    '$porcentagem%',
                    style: TextStyle(
                      fontSize: 150,
                      color: Colors.white,
                    ),
                  ),
                ),
              ):Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 17, 0),
                  borderRadius: BorderRadius.circular(100)
                ),
                child: Center(
                  child: Image.asset(
                   'lib/assets/tempo-esgotado.png',
                   height: 250,
                  ),
                ),
              ),
            
              ElevatedButton(
                onPressed: (){
                  reset();
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context)=>HomePage())
                    );
                },
                 child: SizedBox(
                  height: 100,
                  width: 250,
                   child: Center(
                     child: Text(
                      'Resetar Quiz',
                      style: TextStyle(
                        fontSize: 26
                      ),
                     ),
                   ),
                 )
                 )
            ],
          ),
        ),
      ),
    );
  }

}