import 'package:devnutri/common/cores.dart';
import 'package:devnutri/utils/barra.dart';
import 'package:flutter/material.dart';
import '../routes/rotas.dart';

import '../utils/botao.dart';

import '../utils/campoTexto.dart';

class CadastroUsuario extends StatelessWidget {
  const CadastroUsuario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MinhasCores.preto,
      appBar: const Barra(
        text: 'Cadastrar Usuário',
      ),
      body: Padding(
        padding:
            const EdgeInsets.all(20.0), // Adiciona padding em todos os lados
        child: Center(
          child: ListView(
            // Estica os widgets horizontalmente
            children: [
              const SizedBox(
                height: 10,
              ),
              IconButton(
                onPressed: () {},
                color: MinhasCores.azul,
                iconSize: 200,
                icon: const Icon(Icons.account_circle),
              ),
              const SizedBox(
                height: 5,
              ),

              Botao(
                  text: 'Escolher Avatar',
                  tamanho: const Size(250, 40),
                  onPressed: () {
                    Rotas.pushNamed(context, '/avatar');
                  }),

              const SizedBox(
                  height:
                      40), // Adiciona espaço entre a imagem e o campo de texto

              const CampoTexto(
                texto: 'Nome',
                mensagem: 'Digite seu nome',
              ),

              const SizedBox(height: 10),

              const CampoTexto(
                texto: 'Email',
                mensagem: 'Digite seu Email',
              ),

              const SizedBox(
                  height: 10), // Adiciona espaço entre os campos de texto

              const CampoTexto(
                texto: 'Senha',
                mensagem: 'Digite sua senha',
              ),

              const SizedBox(
                  height:
                      10), // Adiciona espaço entre o campo de texto e o botão

              const CampoTexto(
                texto: 'Data de nascimento',
              ),

              const SizedBox(
                  height:
                      10), // Adiciona espaço entre o campo de texto e o botão

              Botao(
                text: 'Cadastrar',
                onPressed: () {
                  Navigator.pushNamed(context, '/principal');
                },
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
