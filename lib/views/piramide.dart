import 'package:devnutri/common/cores.dart';
import 'package:devnutri/utils/icones.dart';
import 'package:flutter/material.dart';
import '../utils/botao.dart';
import '../utils/barra.dart';

class Piramide extends StatelessWidget {
  const Piramide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MinhasCores.preto,
      appBar: AppBar(
        backgroundColor: MinhasCores.preto,
        flexibleSpace: Center(
          child: Image.asset(
            'assets/images/nutri.png',
            fit: BoxFit.contain,
            width: 100,
            height: 100,
          ),
        ),
        toolbarHeight: 100,
      ),
      body: Center(
        child: ListView(
          children: [
            Image.asset(
              'assets/images/piramide3.png',
              fit: BoxFit.contain,
              width: 550,
              height: 550,
            ),
          ],
        ),
      ),
      bottomNavigationBar: const Icones(),
    );
  }
}
