import 'package:devnutri/utils/barra.dart';
import 'package:devnutri/utils/botao.dart';

import '../common/cores.dart';
import 'package:flutter/material.dart';
//import '../utils/botao.dart';
import '../routes/rotas.dart';
import '../utils/icones.dart';
//import '../utils/campoTexto.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  PrincipalState createState() => PrincipalState();
}

class PrincipalState extends State<Principal> {
  Color iconColor = Colors.grey;
  bool isSelectedIcon = false;

  void changeIconColor() {
    setState(() {
      if (iconColor == Colors.grey) {
        iconColor = MinhasCores.azul;
        isSelectedIcon = true;
      } else {
        iconColor = Colors.grey;
        isSelectedIcon = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Barra(text: 'Sugestões Nutricionais'),
      backgroundColor: MinhasCores.preto,
      body: Padding(
        padding:
            const EdgeInsets.all(20.0), // Adiciona padding em todos os lados
        child: Center(
          child: ListView(
            // Estica os widgets horizontalmente
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    children: [
                      Text(
                        'Olá',
                        style: TextStyle(
                          color: MinhasCores.rosa,
                          fontSize: 35,
                        ),
                      ),
                      Text('Albertinho',
                          style: TextStyle(
                            color: MinhasCores.azul,
                            fontSize: 24,
                          )),
                    ],
                  ),
                  Image.asset(
                    'assets/images/nutri.png',
                    width: 110,
                    height: 110,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
              const Divider(
                color: MinhasCores.rosa,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text('Wilker Cardapio',
                      style: TextStyle(
                        color: MinhasCores.azul,
                        fontSize: 30,
                      )),
                  IconButton(
                    onPressed: changeIconColor,
                    icon: const Icon(
                      Icons.check_box_outlined,
                      size: 30,
                    ),
                    isSelected: isSelectedIcon,
                    color: iconColor,
                  )
                ],
              ),
              Image.asset(
                'assets/images/panqueca.jpg',
                height: 300,
                width: 200,
              ),
              const Text(
                'Descrição:',
                style: TextStyle(color: MinhasCores.rosa),
              ),
              const Text(
                ' - Sobremesa de morango ',
                style: TextStyle(color: MinhasCores.branco),
              ),
              const SizedBox(
                height: 30,
              ),
              const Divider(
                color: MinhasCores.rosa,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text('Luciano Cardapio',
                      style: TextStyle(
                        color: MinhasCores.azul,
                        fontSize: 30,
                      )),
                  IconButton(
                    onPressed: changeIconColor,
                    icon: const Icon(
                      Icons.check_box_outlined,
                      size: 30,
                    ),
                    isSelected: isSelectedIcon,
                    color: iconColor,
                  )
                ],
              ),
              Image.asset(
                'assets/images/panqueca.jpg',
                height: 300,
                width: 200,
              ),
              const Text(
                'Descrição:',
                style: TextStyle(color: MinhasCores.rosa),
              ),
              const Text(
                ' - Sobremesa de morango e mirtilo',
                style: TextStyle(color: MinhasCores.branco),
              ),
              const SizedBox(
                height: 30,
              ),
              const Divider(
                color: MinhasCores.azul,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text('Café da manhã 1',
                      style: TextStyle(
                        color: MinhasCores.azul,
                        fontSize: 30,
                      )),
                  IconButton(
                    onPressed: changeIconColor,
                    icon: const Icon(
                      Icons.check_box_outlined,
                      size: 30,
                    ),
                    isSelected: isSelectedIcon,
                    color: iconColor,
                  )
                ],
              ),
              Image.asset(
                'assets/images/panqueca.jpg',
                height: 300,
                width: 200,
              ),
              const Text(
                'Descrição:',
                style: TextStyle(color: MinhasCores.rosa, fontSize: 22),
              ),
              const Text(
                '- 1 panqueca de aveia com banana (150g)',
                style: TextStyle(color: MinhasCores.branco, fontSize: 17),
              ),
              const Text(
                '- 1 colher de sopa de manteiga de amendoim (15g)',
                style: TextStyle(color: MinhasCores.branco, fontSize: 17),
              ),
              const Text(
                '- 1/2 xícara de frutas vermelhas (50g)',
                style: TextStyle(color: MinhasCores.branco, fontSize: 17),
              ),
              const Text(
                '- 1 xícara de café ou chá (250ml),',
                style: TextStyle(color: MinhasCores.branco, fontSize: 17),
              ),
              const SizedBox(
                height: 50,
              ),
              Botao(
                text: 'Cadastrar',
                onPressed: () {},
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const Icones(),
    );
  }
}
