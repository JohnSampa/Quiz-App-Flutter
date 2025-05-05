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
              'lib/assets/logo.png',
              height: 450,
      
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                )
              ),
              onPressed: (){
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder:(context)=> QuizScreen())
                  );
              },
             child: SizedBox(
              height: 100,
              width: 300,
              child: Center(child: Text('Iniciar'))
              )
             )

          ],
        ),
      ),
    );
  }

}