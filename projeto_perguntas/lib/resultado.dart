import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {

  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

  String get fraseResultado {
    if(pontuacao < 8) {
      return 'Parabens';
    } else if(pontuacao < 12) {
      return 'Você é bom';
    } else if(pontuacao < 16){
      return 'Impressionante';
    } else{
      return 'Nível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
              
              child: Text(
                fraseResultado
                ),
            ),
            ElevatedButton(onPressed: quandoReiniciarQuestionario, child: Text('Reiniciar'), style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.blue,
                  ),)
      ],
    );
  }
}