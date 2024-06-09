import 'package:flutter/material.dart';
import 'package:devnutri/common/cores.dart';
import '../utils/botao.dart';
import '../utils/campoTexto.dart';
import '../database_helper.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _nameController = TextEditingController();
    final _passwordController = TextEditingController();

    Future<void> _login() async {
      String name = _nameController.text;
      String password = _passwordController.text;

      if (name.isEmpty || password.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Por favor, preencha todos os campos')),
        );
        return;
      }

      List<Map<String, dynamic>> users = await DatabaseHelper().queryAll('user');
      bool userExists = users.any((user) =>
          user['name'] == name && user['password'] == password);

      if (userExists) {
        Navigator.pushReplacementNamed(context, '/principal');
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Usuário ou senha incorretos')),
        );
      }
    }

    return Scaffold(
      backgroundColor: MinhasCores.preto,
      body: Padding(
        padding:
            const EdgeInsets.all(20.0), // Adiciona padding em todos os lados
        child: Center(
          child: ListView(
            // Estica os widgets horizontalmente
            children: [
              Image.asset(
                'assets/images/logo.png',
                width: 330,
                height: 330,
                fit: BoxFit.contain,
              ),
              const Divider(color: MinhasCores.rosa),
              const SizedBox(height: 20), // Adiciona espaço entre a imagem e o campo de texto
              CampoTexto(
                texto: 'Nome',
                mensagem: 'Digite seu nome',
                controller: _nameController,
              ),
              const SizedBox(height: 20), // Adiciona espaço entre os campos de texto
              CampoTexto(
                texto: 'Senha',
                mensagem: 'Digite sua senha',
                controller: _passwordController,
              ),
              const SizedBox(height: 20), // Adiciona espaço entre o campo de texto e o botão
              BotaoPequeno(
                text: 'Login',
                onPressed: _login,
                tamanho: const Size(380, 30),
                tamanhoTexto: 24,
              ),
              const SizedBox(height: 40),
              BotaoPequeno(
                text: 'Cadastrar',
                onPressed: () {
                  Navigator.pushNamed(context, '/cadastroUsuario');
                },
                tamanho: const Size(380, 50),
                backgroundColor: MinhasCores.preto,
                textColor: MinhasCores.rosa,
                tamanhoTexto: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}