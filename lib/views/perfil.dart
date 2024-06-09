import 'package:devnutri/common/cores.dart';
import 'package:devnutri/utils/campoTexto.dart';
import 'package:devnutri/utils/icones.dart';
import 'package:devnutri/utils/texto.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../utils/barra.dart';



class Perfil extends StatelessWidget {
  const Perfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: MinhasCores.preto,
      appBar: Barra(
        text: 'Perfil',
      ),
      body: Center(
        child: Column(

          
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [         
                  Icon(Icons.person, size: 100, color: MinhasCores.branco),
                  Text('Nome: ',
                  style: TextStyle(
                    fontSize: 20,
                    color: MinhasCores.branco,
                  ),),
              
                ],
              ),
            ),

            Texto(texto: 'Email: ###########', tamanho: 20,),
            Texto(texto: 'Idade: ########### anos', tamanho: 20,),

            SizedBox(height: 30,),

            Texto2(text: 'Preferencias',)
          
          

           
          ],
        ),
      ),
      bottomNavigationBar:  Icones(),
    );
  }
}
