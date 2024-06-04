//import 'views/cadastros.dart';
import 'package:devnutri/views/home.dart';
import 'package:flutter/material.dart';
import 'routes/rotas.dart';
//import 'views/login.dart';


void main() {
  runApp(const DevNutri());
}

class DevNutri extends StatelessWidget {
  const DevNutri({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Principal(),
      routes: Rotas.carregar(),
    );
  }
}
