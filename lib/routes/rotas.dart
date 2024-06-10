import 'package:flutter/material.dart';
import '../views/login.dart';
import '../views/cadastroUsuario.dart';
import '../views/home.dart';
import '../views/consulta.dart';
import '../views/perfil.dart';
import '../views/creditos.dart';


class Rotas {
  static Map<String, Widget Function(BuildContext)> carregar() {
    return {
      '/login': (context) => const Login(),
      '/cadastroUsuario': (context) => const CadastroUsuario(),
      '/principal': (context) => const Principal(),
      '/consulta': (context) => const Consulta(),
      '/perfil': (context) => const Perfil(),
      '/creditos': (context) => const Creditos(),
    };
  }

  static void Function() call(BuildContext context, String rota) {
    return () {
      Navigator.pushNamed(context, rota);
    };
  }

  static void pushNamed(BuildContext context, String rota, [Object? data]) {
    Navigator.pushNamed(context, rota, arguments: data);
  }

  static void pop(BuildContext context) {
    Navigator.pop(context);
  }
}
