import 'views/login.dart';
import 'package:flutter/material.dart';
import 'routes/rotas.dart';

void main() {
  runApp(const DevNutri());
}

class DevNutri extends StatelessWidget {
  const DevNutri({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Login(),
      routes: Rotas.carregar(),
    );
  }
}
