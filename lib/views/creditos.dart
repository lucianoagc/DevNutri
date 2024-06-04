import 'package:devnutri/common/cores.dart';
import 'package:devnutri/utils/barra.dart';
import 'package:devnutri/utils/icones.dart';
import 'package:flutter/material.dart';
import 'package:devnutri/utils/texto.dart';

class Creditos extends StatelessWidget {
  const Creditos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: MinhasCores.preto,
      appBar: Barra(
        text: 'Créditos'
      ),
      body: Padding(
        
        padding: EdgeInsets.all(20.0),
        
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Textos(
                text: 'Desenvolvido por:',
                cor: MinhasCores.branco,
                tamanho: 26,
              ),
              Divider(
                color: MinhasCores.branco,
              ),
              SizedBox(height: 20), // Adiciona espaço entre o divisor e o texto
              Textos(
                text: 'Ayrton Felipe Santana Oliveira de Lima',
              ),
              SizedBox(height: 20), // Adiciona espaço entre o texto e o próximo divisor
              Textos(
                text: 'Guilherme Vinicius Matte',
              ),
              SizedBox(height: 20), // Adiciona espaço entre o texto e o próximo divisor
              Textos(
                text: 'Lorrana Cadorini de Moura do Prado',
              ),
              SizedBox(height: 20), // Adiciona espaço entre o texto e o próximo divisor
              Textos(
                text: 'Luciano Albertinho Gomes de Castro',
              ),
              SizedBox(height: 20), // Adiciona espaço entre o texto e o próximo divisor
              Textos(
                text: 'Márcio Ferre Pererira',
              ),
              SizedBox(height: 20), // Adiciona espaço entre o texto e o próximo divisor
              Textos(
                text: 'Marcos Vinicius da Silva Lopes',
              ),
              SizedBox(height: 20), // Adiciona espaço entre o texto e o próximo divisor
              Textos(
                text: 'Wilker Fernandes Faria',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Icones(),
    );
  }
}
