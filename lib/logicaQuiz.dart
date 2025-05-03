class LogicaQuiz {

  final List<Map<String, Object>> questions = [
    {
      'question': 'Qual acorde NÃO pertence ao campo harmonico de C?',
      'image':'lib/assets/notas.png',
      'resp':[
        {'option': 'Am7','correta':false},
        {'option': 'G7','correta':false},
        {'option': 'D#m','correta':true},
        {'option': 'C9','correta':false},
      ]
    },
    {
      'question': 'Quantas notas tem a escala pentatônica?',
      'image':'lib/assets/PENTA-MAYOR-C.png',
      'resp':[
        {'option': '3 notas','correta':false},
        {'option': '5 notas','correta':true},
        {'option': '8 notas','correta':false},
        {'option': '7 notas','correta':false},
      ]
    },
    {
      'question': 'Qual a escala de D?',
      'image':'lib/assets/NotesD.png',
      'resp':[
        {'option': 'D  E  F#  G#  A# B#  C#','correta':false},
        {'option': 'D  E  F#  G  A  B  C','correta':false},
        {'option': 'D  E  F  G  A  B  C','correta':false},
        {'option': 'D  E  F#  G  A  B  C#','correta':true},
      ]
    },
    {
      'question': 'Qual o relativo de C?',
      'image':'lib/assets/Guitarrista.png',
      'resp':[
        {'option': 'Dm','correta':false},
        {'option': 'A7M','correta':false},
        {'option': 'G#m','correta':false},
        {'option': 'Am','correta':true},
      ]
    },
    {
      'question': 'Quem criou a guitarra stratocaster',
      'image':'lib/assets/leo-fender-strat_480x480.png',
      'resp':[
        {'option': 'John Suhr','correta':false},
        {'option': 'Leo Fender','correta':true},
        {'option': 'Martin Miller','correta':false},
        {'option': 'Ciro Guita','correta':false},
      ]
    },
  ];

  int pergunataAtual = 0;
  int acertos = 0;

  void corretor(bool resposta){
    if(resposta)acertos++;
  }

  void reset(){
    pergunataAtual = 0;
    acertos = 0;
  }

}