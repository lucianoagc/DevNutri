import 'package:devnutri/common/cores.dart';
import 'package:devnutri/utils/icones.dart';
import 'package:flutter/material.dart';
import '../utils/botao.dart';
import '../utils/barra.dart';

class Consulta extends StatefulWidget {
  const Consulta({Key? key}) : super(key: key);

  @override
  _ConsultaState createState() => _ConsultaState();
}

class _ConsultaState extends State<Consulta> {
  String _selectedValue = '0'; // Valor inicial selecionado

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
            BotaoSelect(
              items: [
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
                setState(() {
                  _selectedValue = value;
                });
                print('Selecionado: $value');
              },
              value: _selectedValue,
            ),
            const SizedBox(
              height: 10,
            ),
            Botao(
              text: 'Consultar',
              onPressed: () {
                // Ação ao pressionar o botão "Consultar"
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: const Icones(),
    );
  }
}
