import 'package:devnutri/common/cores.dart';
import 'package:devnutri/utils/icones.dart';
import 'package:flutter/material.dart';
import '../utils/botao.dart';
import '../utils/barra.dart';

class Cadastro extends StatelessWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MinhasCores.preto,
      appBar: const Barra(
        text: 'Cadastros',
      ),
      body: Center(
        child: ListView(
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 320,
              height: 320,
              fit: BoxFit.contain,
            ),
            Botao(
              text: 'Cadastrar Usuário',
              onPressed: () {},
            ),
            Botao(
              text: 'Cadastrar Alimentos',
              onPressed: () {},
            ),
            Botao(
              text: 'Cadastrar Cardápio',
              onPressed: () {},
            ),
          ],
        ),
      ),
      bottomNavigationBar: const Icones(),
    );
  }
}
