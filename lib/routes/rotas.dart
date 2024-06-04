import 'package:devnutri/views/consulta.dart';
import 'package:flutter/material.dart';

import '../views/cadastroUsuario.dart';
import '../views/cadastros.dart';
import '../views/login.dart';
import '../views/home.dart';
//import '../views/consulta.dart';

class Rotas {
  static Map<String, Widget Function(BuildContext)> carregar() {
    return {
      '/login': (context) => const Login(),
      '/cadastro': (context) => const Cadastro(),
      '/cadastroUsuario': (context) => const CadastroUsuario(),
      '/principal': (context) => const Principal(),
      '/consulta': (context) => const Consulta(),
      
    };
  }

  static void Function() call(BuildContext context, String rota) {
    return () {
      Navigator.pushNamed(context, rota);
    };
  }

  static void pushNamed(BuildContext context, String rota,
   [Object? data]) {
    Navigator.pushNamed(context, rota, arguments: data);
  }

  static void pop(BuildContext context) {
    Navigator.pop(context);
  }
}
