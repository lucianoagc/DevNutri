import '../common/cores.dart';
import 'package:flutter/material.dart';


class Icones extends StatelessWidget {
  final double tamanhoIcone;
  final double tamanhoCaixa;
  final Color corIcone;

  const Icones({
    Key? key,
    this.tamanhoIcone = 26,
    this.tamanhoCaixa = 54,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           

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
              onPressed: () {
                Navigator.pushNamed(context, '/perfil');
              },
              icon: Icon(Icons.person, size: tamanhoIcone),
              color: corIcone,
            ),

              // Icone Home
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/principal');
              },
              icon: Icon(Icons.home, size: tamanhoIcone,),
              color: MinhasCores.azul,
            ),

            
            // Icone Code
             IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/creditos');
              },
              icon: Icon(Icons.code, size: tamanhoIcone),
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
