import '../common/cores.dart';
import 'package:flutter/material.dart';

class CampoTexto extends StatelessWidget {
  final String mensagem;
  final String texto;
  final TextEditingController? controller;
  final TextInputType tipo;
  final Color corTexto;

  const CampoTexto({
    Key? key,
    this.mensagem = 'Digite algo...',
    this.texto = 'Texto',
    this.corTexto = MinhasCores.branco,
    this.controller,
    this.tipo = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: tipo,
      decoration: InputDecoration(
        hintText: mensagem,
        labelText: texto,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(color: MinhasCores.azul), //cor da borda
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide:
              const BorderSide(color: MinhasCores.rosa), // cor da borda focada
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        labelStyle: const TextStyle(color: Colors.white54), // cor da info
        hintStyle: const TextStyle(color: Colors.white54), //cor da info focada
      ),
      style: TextStyle(color: corTexto), // Cor do texto digitado
      textAlign: TextAlign.center,
    );
  }
}

