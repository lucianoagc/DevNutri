import 'package:devnutri/common/cores.dart';
import 'package:flutter/material.dart';

// Botao Grande ------------------------------------------
class Botao extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final Size tamanho;
  final double tamanhoTexto;

  const Botao({
    required this.text,
    required this.onPressed,
    this.backgroundColor = MinhasCores.azul,
    this.textColor = MinhasCores.branco,
    this.tamanho = const Size(350, 35),
    this.tamanhoTexto = 18,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        fixedSize: tamanho, 
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: tamanhoTexto,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}


// Botao Pequeno ------------------------------------------
class BotaoPequeno extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final Size tamanho;
  final double tamanhoTexto;

  const BotaoPequeno({
    required this.text,
    required this.onPressed,
    this.backgroundColor = MinhasCores.azul,
    this.textColor = MinhasCores.branco,
    this.tamanho = const Size(150, 35),
    this.tamanhoTexto = 16,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        fixedSize: tamanho, 
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: tamanhoTexto,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

// Botao Select ------------------------------------------

class BotaoSelect extends StatelessWidget {
  final List<DropdownMenuItem<dynamic>>? items;
  final ValueChanged<dynamic>? onChanged;
  final dynamic value;

  const BotaoSelect({
    Key? key,
    required this.items,
    required this.onChanged,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton<dynamic>(
      items: items,
      onChanged: onChanged,
      value: value,
      style: const TextStyle(
        color: MinhasCores.branco,
        fontSize: 18,
      ),
    );

  }
}

