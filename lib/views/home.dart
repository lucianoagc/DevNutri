import 'package:devnutri/utils/barra.dart';
import 'package:devnutri/utils/botao.dart';
import 'package:devnutri/utils/campoTexto.dart';
import 'package:devnutri/utils/texto.dart';
import '../common/cores.dart';
import 'package:flutter/material.dart';
//import '../utils/botao.dart';
//import '../routes/rotas.dart';
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

              // Panquecas Artesanais ---------------------------------------------------------
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Panquecas Artesanais',
                      style: TextStyle(
                        color: MinhasCores.azul,
                        fontSize: 28,
                      )),
                  Check()
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
              const Texto(
                texto: '3 panquecas: 200g (300kcal | carboidratos)',
              ),
              const Texto(
                texto: 'Morangos: 50g (15kcal | fibras, vitamina A)',
              ),
              const Texto(
                texto: 'Mirtilos: 50g (25kcal | fibras, antioxidantes)',
              ),
              const Texto(
                texto: 'Mel (60kcal | energia, açucares)',
              ),
              const SizedBox(
                height: 30,
              ),

              const Divider(
                color: MinhasCores.rosa,
              ),

              const SizedBox(
                height: 15,
              ),

              // Pão e ovo --------------------------------------------------------------------
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Pão com ovos',
                      style: TextStyle(
                        color: MinhasCores.azul,
                        fontSize: 28,
                      )),
                  Check()
                ],
              ),
              Image.asset(
                'assets/images/pao com ovo.png',
                fit: BoxFit.contain,
              ),
              const Text(
                'Descrição:',
                style: TextStyle(color: MinhasCores.rosa, fontSize: 22),
              ),
              const Texto(
                texto: 'Pão Multigrãos - 50g',
              ),
              const Texto(
                texto: '2 ovos cozidos com orégano - 60g',
              ),
              const Texto(
                texto: 'Chá mate - 240ml',
              ),

              const SizedBox(
                height: 30,
              ),

              const Divider(
                color: MinhasCores.rosa,
              ),

              const SizedBox(
                height: 15,
              ),

              // Opção 3 - sucrilhos de milho ------------------------------------------------
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Sucrilhos de milho',
                      style: TextStyle(
                        color: MinhasCores.azul,
                        fontSize: 28,
                      )),
                  Check()
                ],
              ),
              Image.asset(
                'assets/images/sucrilhos.png',
                fit: BoxFit.contain,
              ),
              const Text(
                'Descrição:',
                style: TextStyle(color: MinhasCores.rosa, fontSize: 22),
              ),
              const Texto(
                texto: 'Sucrilhos de milho - 250g',
              ),
              const Texto(
                texto: 'Leite - 200ml',
              ),
              const Texto(
                texto: 'Morangos a gosto',
              ),

              const SizedBox(
                height: 30,
              ),

              const Divider(
                color: MinhasCores.rosa,
              ),

              const SizedBox(
                height: 15,
              ),

              // Opção 4 - Waffles ---------------------------------------------------------
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Waffles',
                      style: TextStyle(
                        color: MinhasCores.azul,
                        fontSize: 28,
                      )),
                  Check()
                ],
              ),
              Image.asset(
                'assets/images/Waffles.png',
                fit: BoxFit.contain,
              ),
              const Text(
                'Descrição:',
                style: TextStyle(color: MinhasCores.rosa, fontSize: 22),
              ),
              const Texto(
                texto: 'Waffles - 200g',
              ),
              const Texto(
                texto: 'Geleias - 50ml',
              ),
              const Texto(
                texto: 'Mel a gosto',
              ),

              const SizedBox(
                height: 30,
              ),

              const Divider(
                color: MinhasCores.rosa,
              ),

              const SizedBox(
                height: 15,
              ),

              // Opção 4 - Arroz e frango --------------------------------------------------
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Arroz e frango',
                      style: TextStyle(
                        color: MinhasCores.azul,
                        fontSize: 28,
                      )),
                  Check()
                ],
              ),
              Image.asset(
                'assets/images/strogonof.png',
                fit: BoxFit.contain,
              ),
              const Text(
                'Descrição:',
                style: TextStyle(color: MinhasCores.rosa, fontSize: 22),
              ),
              const Texto(
                texto: 'Arroz - 150g',
              ),
              const Texto(
                texto: 'Frango ao molho curry - 150g',
              ),
              const Texto(
                texto: 'Tomates frescos',
              ),

              const SizedBox(
                height: 30,
              ),

              const Divider(
                color: MinhasCores.rosa,
              ),

              const SizedBox(
                height: 15,
              ),

              // Opção 4 - Filézão ----------------------------------------------------------------------
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('File mignon',
                      style: TextStyle(
                        color: MinhasCores.azul,
                        fontSize: 28,
                      )),
                  Check()
                ],
              ),
              Image.asset(
                'assets/images/filézão.png',
                fit: BoxFit.contain,
              ),
              const Text(
                'Descrição:',
                style: TextStyle(color: MinhasCores.rosa, fontSize: 22),
              ),
              const Texto(
                texto: 'Arroz - 100g',
              ),
              const Texto(
                texto: 'File mignon ao molho madeira - 150g',
              ),
              const Texto(
                texto: 'Champignon - 40g',
              ),

              const SizedBox(
                height: 30,
              ),

              const Divider(
                color: MinhasCores.rosa,
              ),

              const SizedBox(
                height: 15,
              ),

              // Opção 4 - Salada caesar ---------------------------------------------------------
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Salada caesar',
                      style: TextStyle(
                        color: MinhasCores.azul,
                        fontSize: 28,
                      )),
                  Check()
                ],
              ),
              Image.asset(
                'assets/images/salada caeser.png',
                fit: BoxFit.contain,
              ),
              const Text(
                'Descrição:',
                style: TextStyle(color: MinhasCores.rosa, fontSize: 22),
              ),
              const Texto(
                texto: '3 alfaces romana baby',
              ),
              const Texto(
                texto: 'Lascas de parmesão - 30g',
              ),
              const Texto(
                texto: '3 fatias de pão de forma sem casca',
              ),
              const Texto(
                texto: 'Mini penne - 150g',
              ),
              const Texto(
                texto: '2 fatias de presunto',
              ),
              const Texto(
                texto: 'Frango picado - 200g',
              ),

              const SizedBox(
                height: 30,
              ),

              const Divider(
                color: MinhasCores.rosa,
              ),

              const SizedBox(
                height: 15,
              ),

              // Opção 4 - Waffles ----------------------------------------------------------------------
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Waffles',
                      style: TextStyle(
                        color: MinhasCores.azul,
                        fontSize: 28,
                      )),
                  Check()
                ],
              ),
              Image.asset(
                'assets/images/Waffles.png',
                fit: BoxFit.contain,
              ),
              const Text(
                'Descrição:',
                style: TextStyle(color: MinhasCores.rosa, fontSize: 22),
              ),
              const Texto(
                texto: 'Waffles - 200g',
              ),
              const Texto(
                texto: 'Geleias - 50ml',
              ),
              const Texto(
                texto: 'Mel a gosto',
              ),

              const SizedBox(
                height: 30,
              ),

              const Divider(
                color: MinhasCores.rosa,
              ),

              const SizedBox(
                height: 15,
              ),

              // Opção 4 - Waffles ------------------------------------------------------------------------
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Waffles',
                      style: TextStyle(
                        color: MinhasCores.azul,
                        fontSize: 28,
                      )),
                  Check()
                ],
              ),
              Image.asset(
                'assets/images/Waffles.png',
                fit: BoxFit.contain,
              ),
              const Text(
                'Descrição:',
                style: TextStyle(color: MinhasCores.rosa, fontSize: 22),
              ),
              const Texto(
                texto: 'Waffles - 200g',
              ),
              const Texto(
                texto: 'Geleias - 50ml',
              ),
              const Texto(
                texto: 'Mel a gosto',
              ),

              // cadastrar
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
