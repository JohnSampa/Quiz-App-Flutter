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
      'question': 'Quem criou a guitarra stratocaster?',
      'image':'lib/assets/leo-fender-strat_480x480.png',
      'resp':[
        {'option': 'John Suhr','correta':false},
        {'option': 'Leo Fender','correta':true},
        {'option': 'Martin Miller','correta':false},
        {'option': 'John Mayer','correta':false},
      ]
    },
    {
      'question': 'Como se lê o acorde Bm7♭5?',
      'image':'lib/assets/acordemeiodiminuto.png',
      'resp':[
        {'option': 'Si meio diminuto','correta':true},
        {'option': 'Si maior com sétima','correta':false},
        {'option': 'Si maior com sétima e quinta bemol','correta':false},
        {'option': 'Si diminuto','correta':false},
      ]
    },
     {
      'question': 'Qual a quinta aumentada de A?',
      'image':'lib/assets/notas.png',
      'resp':[
        {'option': 'F','correta':false},
        {'option': 'G','correta':false},
        {'option': 'E#','correta':true},
        {'option': 'E','correta':false},
      ]
    },
    {
      'question': 'Qual intervalo existe entre as notas C e E?',
      'image':'lib/assets/NotasM.png',
      'resp':[
        {'option': 'Terça maior','correta':true},
        {'option': 'Terça menor','correta':false},
        {'option': 'Segunda maior','correta':false},
        {'option': 'Quarta justa','correta':false},
      ]
    },
    {
      'question': 'Quem é o famoso guitarrista da foto?',
      'image':'lib/assets/JimiHendrix.jpg',
      'resp':[
        {'option': 'Jimi Hendrix','correta':true},
        {'option': 'Jimmy Page','correta':false},
        {'option': 'David Gilmour','correta':false},
        {'option': 'Steve Vai','correta':false},
      ]
    },
    {
      'question': 'Qual a estrutura intervalar de um acorde menor?',
      'image':'lib/assets/minor-scale-pattern.png',
      'resp':[
        {'option': 'T - 3 - 5j','correta':false},
        {'option': 'T - 2m - 5j','correta':false},
        {'option': 'T - 3m - 5j','correta':true},
        {'option': 'T - 3m - 4j','correta':false},
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