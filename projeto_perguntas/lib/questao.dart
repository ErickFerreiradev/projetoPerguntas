import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  
  final String texto;

  Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        texto,
        style: TextStyle(
          fontSize: 28,
          
        ),
        ),
    );
  }
}