import 'package:devnutri/common/cores.dart';
import 'package:devnutri/utils/icones.dart';
import 'package:flutter/material.dart';
import '../utils/botao.dart';
import '../utils/barra.dart';



class Compartilhar extends StatelessWidget {
  const Compartilhar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MinhasCores.preto,
      appBar: const Barra(
        text: 'Compartilhar',
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            
          
          Botao(
              text: 'Compartilhar',
              onPressed: () {},
            ),

            const SizedBox(height: 45,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(onPressed: (){
                  
                }, icon: const Icon(Icons.abc), iconSize: 80,),
                IconButton(onPressed: (){
                  
                }, icon: const Icon(Icons.account_circle_rounded), iconSize: 80,),
                IconButton(onPressed: (){
                  
                }, icon: const Icon(Icons.table_view_rounded), iconSize: 80,),
              ],
            )
           
          ],
        ),
      ),
      bottomNavigationBar: const Icones(),
    );
  }
}
