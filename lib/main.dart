import 'package:devnutri/views/cadastroUsuario.dart';
import 'package:devnutri/views/cadastros.dart';
import 'package:devnutri/views/consulta.dart';
import 'package:devnutri/views/creditos.dart';
import 'package:devnutri/views/login.dart';
import 'package:flutter/material.dart';
import 'utils/icones.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Consulta(),
    );
  }
}
