
import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

main () {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp>{

  var perguntaSelecionada = 0;
  final _perguntas = const [
      {
        'texto': 'Qual sua cor favorita?',
        'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco'],
      },
      {
        'texto': 'Qual é o seu animal favorito?',
        'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão'],
        },
        {
        'texto': 'Qual é o seu instrutor favorito?',
        'respostas': ['Maria', 'João', 'Leo', 'Pedro'],
        },
    ];
  void _responder() {
    if(temPerguntaSelecionada){
      setState(() {
      perguntaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada ? _perguntas[perguntaSelecionada].cast()['respostas'] : [];

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
        : Resultado(),S
      ),
    );
  }
}
class PerguntaApp extends StatefulWidget {

  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }

}