import 'package:devnutri/services/cardapio_service.dart';
import 'package:devnutri/utils/barra.dart';
import 'package:devnutri/utils/botao.dart';
import 'package:devnutri/utils/texto.dart';
import '../common/cores.dart';
import 'package:flutter/material.dart';
import '../utils/icones.dart';
import '../models/cardapio.dart';
import '../database_helper.dart';
import '../services/cardapio_service.dart';




class Principal extends StatefulWidget {

  const Principal({Key? key}) : super(key: key);

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
                      Text('',
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



             ...cardapios.map((cardapio) => buildCardapioItem(cardapio)).toList(),


              const SizedBox(
                height: 80,
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Texto2(text: 'Descrição:'),
                   Texto2(text: '400 Kcal')      
                 ],
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Texto2(text: 'Descrição:'),
                   Texto2(text: '260 Kcal')      
                 ],
               ),
              const Texto(
                texto: 'Pão Multigrãos: 50g (120 Kcal | fibras, carboidratos)',
              ),
              const Texto(
                texto: '2 ovos cozidos: 60g (proteínas, gorduras saudáveis)',
              ),
              const Texto(
                texto: 'Chá mate - 240ml(antioxidantes)',
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Texto2(text: 'Descrição:'),
                   Texto2(text: '500 Kcal')      
                 ],
               ),
              const Texto(
                texto: 'Sucrilhos de milho: 250g (300Kcal | carboidratos)',
              ),
              const Texto(
                texto: 'Leite: 200ml (120Kcal | cálcio, proteínas)',
              ),
              const Texto(
                texto: 'Morangos: 50g (15kcal | fibras, vitamina A)',
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Texto2(text: 'Descrição:'),
                   Texto2(text: '676 Kcal')      
                 ],
               ),
              const Texto(
                texto: 'Waffles: 200g (400Kcal | gorduras, carboidratos)',
              ),
              const Texto(
                texto: 'Creme de avelã: 30ml (180Kcal | gorduras, carboidratos)',
              ),
              const Texto(
                texto: 'Mel: 40ml (96Kcal | açúcares)',
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
                  Text('Frango ao molho curry',
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

             const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Texto2(text: 'Descrição:'),
                   Texto2(text: '413 Kcal')      
                 ],
               ),
              const Texto(
                texto: 'Arroz: 150g (195Kcal | carboidartos)',
              ),
              const Texto(
                texto: 'Frango ao molho curry: 150g (200Kcal | proteínas)',
              ),
              const Texto(
                texto: 'Tomates frescos: 100g (18Kcal | vitamina C, antioxidates)',
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Texto2(text: 'Descrição:'),
                   Texto2(text: '413 Kcal')      
                 ],
               ),
              const Texto(
                texto: 'Arroz: 150g (195Kcal | carboidartos)',
              ),
              const Texto(
                texto: 'File mignon ao molho madeira: 150g (300Kcal | proteínas, ferro)',
              ),
              const Texto(
                texto: 'Champignon: 40g (8Kcal | antioxidantes, proteínas, vitamina D)',
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Texto2(text: 'Descrição:'),
                   Texto2(text: '720 Kcal')      
                 ],
               ),
              const Texto(
                texto: '3 alfaces romana baby (45Kcal)',
              ),
              const Texto(
                texto: 'Lascas de parmesão: 30g (120Kcal | cálcio, gorduras)',
              ),
              const Texto(
                texto: '3 fatias de pão de forma sem casca (195Kcal | carboidatros)',
              ),
              const Texto(
                texto: '2 fatias de presunto cru (60Kcal | proteínas, gorduras)',
              ),
              const Texto(
                texto: 'Frango picado: 200g (300Kcal | proteínas)',
              ),
              
                                        

              // cadastrar
              const SizedBox(
                height: 80,
              ),
              const Divider(
                color: MinhasCores.rosa,
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


  Widget buildCardapioItem(CardapioModelo cardapio) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            cardapio.nome,
            style: const TextStyle(
              color: MinhasCores.azul,
              fontSize: 26,
            ),
          ),
          Check(),
        ],
      ),
      Image.asset(
        cardapio.foto,
        fit: BoxFit.contain,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Texto2(text: 'Descrição:'),
          Texto2(text: cardapio.caloria),
          
        ],
      ),
      Texto(
        texto: cardapio.descricao,
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
    ],
  );
}


}
