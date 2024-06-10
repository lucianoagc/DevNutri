import 'package:devnutri/services/cardapio_service.dart';
import 'package:devnutri/utils/barra.dart';
import 'package:devnutri/utils/botao.dart';
import 'package:devnutri/utils/texto.dart';
import '../common/cores.dart';
import 'package:flutter/material.dart';
import '../utils/icones.dart';
import '../models/cardapio.dart';
//import '../database_helper.dart';
//import '../services/cardapio_service.dart';




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
                height: 40,
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
              fontSize: 20,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.share) , onPressed: (){

          },),
          Check(),
        ],
      ),
      Image.asset(
        cardapio.foto,
        fit: BoxFit.cover,
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
