import 'package:devnutri/common/cores.dart';
import 'package:flutter/material.dart';

class Icones extends StatelessWidget {
  final double tamanhoIcone;
  final double tamanhoCaixa;
  final Color corIcone;

  const Icones({
    this.tamanhoIcone = 26,
    this.tamanhoCaixa = 64,
    this.corIcone = MinhasCores.branco,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: tamanhoCaixa,
      child: BottomAppBar(
        color: MinhasCores.preto,
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            // Icone Home
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/principal');
              },
              icon: Icon(
                Icons.home, size: tamanhoIcone),
              color: corIcone,
            ),

            // Icone Pesquisa
            IconButton(
              onPressed: () {
                 Navigator.pushNamed(context, '/consulta');
              },
              icon: Icon(Icons.search, size: tamanhoIcone),
              color: corIcone,
            ),

             // Icone Home
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cadastro');
              },
              icon: const Icon(Icons.add_circle_sharp, size: 38),
              color: MinhasCores.azul,
            ),

            // Icone Compartilhar
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/compartilhar');
              },
              icon: Icon(Icons.share, size: tamanhoIcone),
              color: corIcone,
            ),

            // Icone Sair
            IconButton(
              onPressed: () {
                 Navigator.pushNamed(context, '/login');
              },
              icon: const Icon(
                Icons.logout,
                 size: 30,
                ),
              color: Colors.red,
              
            ),
          ],
        ),
      ),
    );
  }
}

