import 'package:devnutri/models/cardapio.dart';

List<CardapioModelo> cardapios = [
  CardapioModelo(
    id: 1,
    nome: 'Panquecas Artesanais',
    descricao: '3 panquecas: 200g (300kcal | carboidratos), '
               'Morangos: 50g (15kcal | fibras, vitamina A), '
               'Mirtilos: 50g (25kcal | fibras, antioxidantes), '
               'Mel (60kcal | energia, açucares)',
    foto: 'assets/images/panqueca.png',
    caloria: '400 Kcal',
  ),
  CardapioModelo(
    id: 2,
    nome: 'Pão Multigrãos com Ovos',
    descricao: 'Pão Multigrãos: 50g (120 Kcal | fibras, carboidratos), '
               '2 ovos cozidos: 60g (proteínas, gorduras saudáveis), '
               'Chá mate - 240ml (antioxidantes)',
    foto: 'assets/images/pao com ovo.png',
    caloria: '234 Kcal',
  ),
];
