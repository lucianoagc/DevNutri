import 'package:devnutri/common/cores.dart';
import 'package:devnutri/utils/barra.dart';
import 'package:flutter/material.dart';
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
                iconSize: 190,
                icon: const Icon(Icons.circle),
              ),
              SizedBox(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BotaoPequeno(text: "Enviar foto", onPressed: () {}),
                    BotaoPequeno(text: "Tirar Foto", onPressed: () {})
                  ],
                ),
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

              const CampoTexto(
                texto: 'Data de nascimento',
              ),

              const SizedBox(
                  height:
                      20), // Adiciona espaço entre o campo de texto e o botão

              Botao(
                text: 'Cadastrar',
                onPressed: () {},
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
