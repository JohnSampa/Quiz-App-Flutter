import 'package:flutter/material.dart';
import 'package:quiz_app/quizScreen.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text('Quiz Musical'),
      ),

      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Text(
              'Clique no botão para iniciar o Quiz Musical'
            ),

             Image.asset(
              'lib/assets/FenderBlue.png',
              width: 140,
      
            ),

            ElevatedButton(
              onPressed: (){
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder:(context)=> QuizScreen())
                  );
              },
             child: Text('Iniciar')
             )

          ],
        ),
      ),
    );
  }

}