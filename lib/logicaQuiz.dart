class LogicaQuiz {

  final List<Map<String, Object>> questions = [
    {
      'question': 'Qual acorde NÃO pertence ao campo harmonico de C?',
      'resp':[
        {'option': 'Am7','correta':false},
        {'option': 'G7','correta':false},
        {'option': 'D#m','correta':true},
        {'option': 'C9','correta':false},
      ]
    },
    {
      'question': 'Quantas notas tem a escala pentatônica?',
      'resp':[
        {'option': '3 notas','correta':false},
        {'option': '5 notas','correta':true},
        {'option': '8 notas','correta':false},
        {'option': '7 notas','correta':false},
      ]
    },
    {
      'question': 'Qual a escala de D?',
      'resp':[
        {'option': 'D  E  F#  G#  A# B#  C#','correta':false},
        {'option': 'D  E  F#  G  A  B  C','correta':false},
        {'option': 'D  E  F  G  A  B  C','correta':false},
        {'option': 'D  E  F#  G  A  B  C#','correta':true},
      ]
    },
    {
      'question': 'Qual o relativo de C?',
      'resp':[
        {'option': 'Dm','correta':false},
        {'option': 'A7M','correta':false},
        {'option': 'G#m','correta':false},
        {'option': 'Am','correta':true},
      ]
    },
    {
      'question': 'Quem criou a guitarra eletrica',
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