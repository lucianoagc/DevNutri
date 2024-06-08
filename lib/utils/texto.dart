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

class Textos2 extends StatelessWidget {
  final String text;
  final double tamanho;
  final Color cor;
  

  const Textos2({
    required this.text,
    this.tamanho = 22,
    this.cor = MinhasCores.rosa,
    
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('Opção 2',
      style: TextStyle(
        color: MinhasCores.azul,
        fontSize: 28,
      )
    );
  }
}