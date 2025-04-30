class LogicaQuiz {

  final List<Map<String, Object>> questions = [
    {
      'question': 'Qual acorde NÂO pertence ao campo harmonico de C?',
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
  ];

  int pergunataAtual = 0;
  int acertos = 0;

  void corretor(bool resposta){
    if(resposta)acertos++;
    pergunataAtual++;
  }

}