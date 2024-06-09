import '../common/cores.dart';
import '../utils/icones.dart';
import 'package:flutter/material.dart';
import '../utils/botao.dart';
import '../utils/barra.dart';

class Cardapio extends StatelessWidget {
  const Cardapio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MinhasCores.preto,
      appBar: const Barra(
        text: 'Consulta',
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 320,
              height: 320,
              fit: BoxFit.contain,
            ),
            _buildDropdown(),
            const SizedBox(height: 10),
            Botao(
              text: 'Consultar',
              onPressed: () {},
            ),
          ],
        ),
      ),
      bottomNavigationBar: const Icones(),
    );
  }

  Widget _buildDropdown() {
    return BotaoSelect(
      items: const [
        DropdownMenuItem(
          child: Text('Selecione a consulta'),
          value: '0',
        ),
        DropdownMenuItem(
          child: Text('Usuário'),
          value: '1',
        ),
        DropdownMenuItem(
          child: Text('Alimento'),
          value: '2',
        ),
        DropdownMenuItem(
          child: Text('Cardápio'),
          value: '3',
        ),
      ],
      onChanged: (value) {
        print('Selecionado: $value');
      },
      value: '0', // Valor inicial selecionado
    );
  }
}
