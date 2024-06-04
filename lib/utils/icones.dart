import 'package:devnutri/common/cores.dart';
import 'package:flutter/material.dart';

class Icones extends StatelessWidget {
  final double tamanhoIcone;
  final double tamanhoCaixa;
  final Color corIcone;

  const Icones({
    this.tamanhoIcone = 26,
    this.tamanhoCaixa = 60,
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

            // Icone Home
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add_reaction_rounded, size: tamanhoIcone),
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

            // Icone Compartilhar
            IconButton(
              onPressed: () {},
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

