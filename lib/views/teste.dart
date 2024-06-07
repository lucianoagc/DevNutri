/*import 'dart:async';
import '../utils/barra.dart';
import 'package:flutter/material.dart';
import '../routes/rotas.dart';

void main() {
  runApp(Buffer());
}

class Buffer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    // Inicia o temporizador para a transição após 5 segundos
    Timer(Duration(seconds: 5), () {
      Navigator.pushNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _isLoading
                ? const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                      Color(0xFFF25781),
                    ),
                  )
                : SizedBox(
                    width: 100, // Ajuste conforme necessário
                    height: 100, // Ajuste conforme necessário
                    child: Image.asset('assets/images/logo.png'),
                  ),
          ],
        ),
      ),
    );
  }
}
*/
