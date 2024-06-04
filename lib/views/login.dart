import 'package:devnutri/common/cores.dart';
import 'package:flutter/material.dart';
import '../utils/botao.dart';

import '../utils/campoTexto.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MinhasCores.preto,
      body: Padding(
        padding:
            const EdgeInsets.all(20.0), // Adiciona padding em todos os lados
        child: Center(
          child: ListView(
            // Estica os widgets horizontalmente
            children: [
              Image.asset(
                'assets/images/logo.png',
                width: 330,
                height: 330,
                fit: BoxFit.contain,
              ),

              const Divider(
                color: MinhasCores.rosa,
              ),

              const SizedBox(
                  height:
                      20), // Adiciona espaço entre a imagem e o campo de texto

              const CampoTexto(
                texto: 'Nome',
              ),

              const SizedBox(
                  height: 20), // Adiciona espaço entre os campos de texto

              const CampoTexto(
                texto: 'Senha',
              ),

              const SizedBox(
                  height:
                      20), // Adiciona espaço entre o campo de texto e o botão

              BotaoPequeno(
                text: 'Login',
                onPressed: () {},
                tamanho: const Size(380, 30),
                tamanhoTexto: 24,
              ),

              const SizedBox(height: 40),
              BotaoPequeno(
                text: 'Cadastrar',
                onPressed: () {},
                tamanho: const Size(380, 50),
                backgroundColor: MinhasCores.preto,
                textColor: MinhasCores.rosa,
                tamanhoTexto: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
