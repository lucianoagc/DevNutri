import 'package:devnutri/common/cores.dart';
import 'package:flutter/material.dart';

class Textos extends StatelessWidget {
  final String text;
  final double tamanho;
  final Color cor;
  

  const Textos({
    required this.text,
    this.tamanho = 22,
    this.cor = MinhasCores.rosa,
    
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        
        fontSize: tamanho,
        color: cor,
      ),
    );
  }
}