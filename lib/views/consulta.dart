import 'package:flutter/material.dart';
import 'package:devnutri/common/cores.dart';
import 'package:devnutri/utils/icones.dart';
import 'package:devnutri/utils/botao.dart';
import 'package:devnutri/utils/barra.dart';
import 'package:devnutri/models/cardapio.dart';
import '../services/cardapio_service.dart';

class Consulta extends StatefulWidget {
  const Consulta({Key? key}) : super(key: key);

  @override
  _ConsultaState createState() => _ConsultaState();
}

class _ConsultaState extends State<Consulta> {
  String _searchQuery = '';
  CardapioModelo? _searchResult;

  void _searchCardapio(String query) {
    setState(() {
      _searchResult = cardapios.firstWhere(
        (cardapio) => cardapio.nome.toLowerCase() == query.toLowerCase(),
        orElse: () => CardapioModelo.naoEncontrado(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MinhasCores.preto,
      appBar: const Barra(
        text: 'Consulta',
      ),
      body: Center(
        child: ListView(
          
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              'Consultar Cardápio',
              style: TextStyle(
                fontSize: 18,
                color: MinhasCores.branco,
              ),
            ),
            const SizedBox(
              height: 10,
            ),



            TextField(
              decoration: InputDecoration(
                labelText: 'Pesquisar',
                hintText: 'Digite o nome do cardápio',
                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: const BorderSide(color: MinhasCores.azul), //cor da borda
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide:
                    const BorderSide(color: MinhasCores.rosa), // cor da borda focada
              ),
              contentPadding:
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              labelStyle: const TextStyle(color: Colors.white54), // cor da info
              hintStyle: const TextStyle(color: Colors.white54),
              ),
              style: const TextStyle(color: MinhasCores.branco), // Cor do texto digitado
              textAlign: TextAlign.center,
              onChanged: (value) {
                setState(() {
                  _searchQuery = value;
                });
              },
            ),




            const SizedBox(
              height: 10,
            ),
            Botao(
              text: 'Consultar',
              onPressed: () {
                if (_searchQuery.isNotEmpty) {
                  _searchCardapio(_searchQuery);
                } else {
                  print('Digite um nome de cardápio para pesquisar.');
                }
              },
            ),
            const SizedBox(
              height: 20,
            ),
            if (_searchResult != null)
              Column(
                children: [
                  Text(
                    _searchResult!.nome,
                    style: TextStyle(
                      color: MinhasCores.branco,
                      fontSize: 24,
                    ),
                  ),
                  if (_searchResult!.foto.isNotEmpty)
                    Image.asset(
                      _searchResult!.foto,
                      height: 200,
                    ),
                  Text(
                    _searchResult!.descricao,
                    style: TextStyle(
                      color: MinhasCores.branco,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    _searchResult!.caloria,
                    style: TextStyle(
                      color: MinhasCores.branco,
                      fontSize: 16,
                    ),
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
