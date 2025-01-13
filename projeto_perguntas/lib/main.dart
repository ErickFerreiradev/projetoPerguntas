
import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

main () {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp>{

  var _pontuacaoTotal = 0;
  var perguntaSelecionada = 0;
  final _perguntas = const [
      {
        'texto': 'Qual sua cor favorita?',
        'respostas': [
          {'texto': 'Preto', 'pontuacao': 3},
          {'texto': 'Vermelho', 'pontuacao': 5},
          {'texto': 'Verde','pontuacao': 1},
          {'texto': 'Branco','pontuacao': 2},
          ],
      },
      {
        'texto': 'Qual é o seu animal favorito?',
        'respostas': [
          {'texto':'Coelho', 'pontuacao': 3 },
          {'texto':'Cobra', 'pontuacao': 7 },
          {'texto':'Leão', 'pontuacao': 1 },
          {'texto':'Tigre', 'pontuacao': 3 },
        ],
        },
        {
        'texto': 'Qual é o seu instrutor favorito?',
        'respostas': [
          {'texto':'Maria', 'pontuacao': 3 },
          {'texto':'João', 'pontuacao': 2 },
          {'texto':'Luan', 'pontuacao': 1 },
          {'texto':'Giovanna', 'pontuacao': 6},
          ],
        },
    ];
  void _responder(int pontuacao) {
    if(temPerguntaSelecionada){
      setState(() {
      perguntaSelecionada++;
      _pontuacaoTotal += pontuacao;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada ? _perguntas[perguntaSelecionada].cast()['respostas'] as List<Map<String, Object>> : [];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada 
        ? Questionario(
          perguntas: _perguntas, perguntaSelecionada: perguntaSelecionada, 
          quandoResponder: _responder
          ) 
        : Resultado(_pontuacaoTotal),
      ),
    );
  }
}
class PerguntaApp extends StatefulWidget {

  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }

}