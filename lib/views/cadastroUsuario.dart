import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:devnutri/common/cores.dart';
import 'package:devnutri/utils/barra.dart';
import '../utils/botao.dart';
import '../utils/campoTexto.dart';
import '../database_helper.dart';
import '../models/user.dart';

class CadastroUsuario extends StatefulWidget {
  const CadastroUsuario({Key? key}) : super(key: key);

  @override
  State<CadastroUsuario> createState() => _CadastroUsuarioState();
}

class _CadastroUsuarioState extends State<CadastroUsuario> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _birthdateController = TextEditingController();
  String _selectedPhoto = 'assets/images/homem1.jpeg'; // Default photo

  _saveForm() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      User user = User(
        name: _nameController.text,
        email: _emailController.text,
        password: _passwordController.text,
        birthdate: _birthdateController.text,
        photo: _selectedPhoto,
      );
      await DatabaseHelper().insert('user', user.toMap());
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MinhasCores.preto,
      appBar: const Barra(
        text: 'Cadastrar Usuário',
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: ListView(
            children: [
              const SizedBox(height: 10),
              CarouselSlider(
                items: [
                  'assets/images/homem1.jpeg',
                  'assets/images/mulher1.jpeg',
                  'assets/images/homem2.jpeg',
                  'assets/images/mulher2.jpeg',
                  'assets/images/homem3.jpeg',
                  'assets/images/mulher3.jpeg',
                ].map((item) => GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedPhoto = item;
                    });
                  },
                  child: Image.asset(item, fit: BoxFit.contain),
                )).toList(),
                options: CarouselOptions(
                  aspectRatio: 4,
                  height: 240,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  autoPlay: false,
                  viewportFraction: 0.8,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                '<= Escolha seu avatar =>',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: MinhasCores.branco,
                  fontSize: 22,
                ),
              ),
              const SizedBox(height: 50),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    CampoTexto(
                      texto: 'Nome',
                      mensagem: 'Digite seu nome',
                      controller: _nameController,
                    ),
                    const SizedBox(height: 10),
                    CampoTexto(
                      texto: 'Email',
                      mensagem: 'Digite seu Email',
                      controller: _emailController,
                    ),
                    const SizedBox(height: 10),
                    CampoTexto(
                      texto: 'Senha',
                      mensagem: 'Digite sua senha',
                      controller: _passwordController,
                    ),
                    const SizedBox(height: 10),
                    CampoTexto(
                      texto: 'Data de nascimento',
                      controller: _birthdateController,
                    ),
                    const SizedBox(height: 10),
                    Botao(
                      text: 'Cadastrar',
                      onPressed: _saveForm,
                      backgroundColor: MinhasCores.preto,
                      textColor: MinhasCores.rosa,
                      tamanhoTexto: 24,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
