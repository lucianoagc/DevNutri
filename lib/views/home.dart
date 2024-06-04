import '../common/cores.dart';
import 'package:flutter/material.dart';
import '../utils/botao.dart';
import '../utils/icones.dart';
//import '../utils/campoTexto.dart';

class Principal extends StatelessWidget {
  const Principal({Key? key}) : super(key: key);

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
                      20), // Adiciona espaço entre o campo de texto e o botão

              Botao(
                text: 'Tela principal',
                onPressed: () {},
                
                tamanhoTexto: 24,
              ),

              const Divider(
                color: MinhasCores.rosa,
              ),

              const Divider(
                color: MinhasCores.rosa,
              ),


              const SizedBox(height: 40),
              BotaoPequeno(
                text: 'Cadastrar',
                onPressed: () {
                  Navigator.pushNamed(context, '/cadastroUsuario');
                },
                tamanho: const Size(380, 50),
                backgroundColor: MinhasCores.preto,
                textColor: MinhasCores.rosa,
                tamanhoTexto: 24,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const Icones(),
    );
  }
}
