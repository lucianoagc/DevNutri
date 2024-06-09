import '../common/cores.dart';
import 'package:flutter/material.dart';

class Texto extends StatelessWidget{
  final String texto;
  final double tamanho;
  final Color cor;

  const Texto({
    Key? key,
    this.texto = 'cardapio',
    this.tamanho = 17,
    this.cor = MinhasCores.branco,
  }) : super(key: key);



@override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: TextStyle(
        fontSize: tamanho,
        color: cor,
    )
    );
  }

}



class Texto2 extends StatelessWidget {
  final String text;
  final double tamanho;
  final Color cor;
  

  const Texto2({
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


class Texto3 extends StatelessWidget {
  final String text;
  final double tamanho;
  final Color cor;
  

  const Texto3({
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