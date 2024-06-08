import 'package:devnutri/common/cores.dart';
import 'package:flutter/material.dart';
import '../routes/rotas.dart';

class Icones extends StatelessWidget {
  final double tamanhoIcone;
  final double tamanhoCaixa;
  final Color corIcone;

  const Icones({
    Key? key,
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
              icon: Icon(Icons.home, size: tamanhoIcone),
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

            // Icone Home
            IconButton(
              onPressed: () {
                Rotas.pushNamed(context, '/creditos');
              },
              icon: const Icon(
                Icons.app_registration_sharp,
              ),
              color: corIcone,
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

// ---------------------------------------

class Check extends StatefulWidget {
  const Check({super.key});

  @override
  PrincipalState createState() => PrincipalState();
}

class PrincipalState extends State<Check> {
  Color iconColor = Colors.grey;
  bool isSelectedIcon = false;

  void changeIconColor() {
    setState(() {
      if (iconColor == Colors.grey) {
        iconColor = MinhasCores.azul;
        isSelectedIcon = true;
      } else {
        iconColor = Colors.grey;
        isSelectedIcon = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: changeIconColor,
      icon: const Icon(
        Icons.check_box_outlined,
        size: 30,
      ),
      isSelected: isSelectedIcon,
      color: iconColor,
    );
  }
}
