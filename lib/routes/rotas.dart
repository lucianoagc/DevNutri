import 'package:flutter/material.dart';
import '../views/cadastros.dart';
import '../views/home.dart';
import '../views/login.dart';

class Rotas {
  static Map<String, Widget Function(BuildContext)> carregar() {
    return {
      '/login': (context) => const Login(),
      '/cadastros': (context) => const Cadastro(),
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
