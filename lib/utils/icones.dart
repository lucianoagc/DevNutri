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
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.home, size: tamanhoIcone),
              color: corIcone,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.login, size: tamanhoIcone),
              color: corIcone,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search, size: tamanhoIcone),
              color: corIcone,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.share, size: tamanhoIcone),
              color: corIcone,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings, size: tamanhoIcone),
              color: corIcone,
            ),
          ],
        ),
      ),
    );
  }
}

