import 'package:flutter/material.dart';
import 'package:devnutri/common/cores.dart';
import '../utils/botao.dart';
import '../utils/campoTexto.dart';
import '../utils/auth_helper.dart';
import '../models/user.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _nameController = TextEditingController();
    final _passwordController = TextEditingController();
    final _emailController = TextEditingController();
   
    Future<void> _login() async {
      String email = _emailController.text;
      String password = _passwordController.text;

      if (email.isEmpty || password.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Por favor, preencha todos os campos')),
        );
        return;
      }

      AuthHelper auth = AuthHelper();
      User? user = await auth.login(email, password);

      if (user!= null) {
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
        padding: const EdgeInsets.all(20.0), // Adiciona padding em todos os lados
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