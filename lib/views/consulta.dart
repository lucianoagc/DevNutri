import 'package:devnutri/utils/campoTexto.dart';
import 'package:flutter/material.dart';
import 'package:devnutri/common/cores.dart';
import 'package:devnutri/utils/icones.dart';
import 'package:devnutri/utils/botao.dart';
import 'package:devnutri/utils/barra.dart';

class Consulta extends StatefulWidget {
  const Consulta({Key? key}) : super(key: key);

  @override
  _ConsultaState createState() => _ConsultaState();
}

class _ConsultaState extends State<Consulta> {
  String? _selectedValue; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MinhasCores.preto,
      appBar: const Barra(
        text: 'Consulta',
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20, 
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Selecione a consulta',
                  style: TextStyle(
                    fontSize: 18,
                    color: MinhasCores.branco,
                  ),
                ),
                Theme(
                  data: Theme.of(context).copyWith(
                    canvasColor: MinhasCores.preto,
                  ),
                  child: BotaoSelect(
                    items: [
                      DropdownMenuItem(
                        child: Text(
                          'Usuário',
                          style: TextStyle(color: MinhasCores.rosa),
                        ),
                        value: '1',
                      ),
                      DropdownMenuItem(
                        child: Text(
                          'Cardápio',
                          style: TextStyle(color: MinhasCores.rosa),
                        ),
                        value: '2',
                      ),
                    ],
                    onChanged: (value) {
                      if (value != null) {
                        setState(() {
                          _selectedValue = value;
                        });
                        print('Selecionado: $value');
                      }
                    },
                    value: _selectedValue,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10, 
            ),
            const CampoTexto(
              texto: 'Pesquisar',
              mensagem: 'Digite algo', 
            ),
            const SizedBox(
              height: 10, 
            ),
            Botao(
              text: 'Consultar',
              onPressed: () {
                if (_selectedValue != null) {
                  print('Botão Consultar pressionado com valor: $_selectedValue');
                } else {
                  print('Selecione uma opção');
                }
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: const Icones(),
    );
  }
}