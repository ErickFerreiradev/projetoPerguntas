import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() qndSelecinado;

  Resposta(this.texto, this.qndSelecinado);

  @override
  Widget build(BuildContext context) {
     return Container(
      width: double.infinity,
       child: ElevatedButton(
                child: Text(texto),
                onPressed: qndSelecinado,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  ),
                
              ),
     );
  }
}