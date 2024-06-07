import 'package:devnutri/common/cores.dart';
import 'package:devnutri/utils/icones.dart';
import 'package:flutter/material.dart';
import '../utils/botao.dart';
import '../utils/barra.dart';

class Avatar extends StatelessWidget {
  const Avatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MinhasCores.preto,
      appBar: const Barra(
        text: 'Avatares',
      ),
      body: Center(
        child: ListView(
          // Estica os widgets horizontalmente
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/1.png',
                  height: 180,
                ),
                Image.asset(
                  'assets/images/2.png',
                  height: 180,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/3.png',
                  height: 180,
                ),
                Image.asset(
                  'assets/images/4.png',
                  height: 180,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/5.png',
                  height: 180,
                ),
                Image.asset(
                  'assets/images/6.png',
                  height: 180,
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const Icones(),
    );
  }
}
