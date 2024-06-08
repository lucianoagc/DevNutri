import 'package:carousel_slider/carousel_slider.dart';
import 'package:devnutri/common/cores.dart';
import 'package:devnutri/utils/barra.dart';
import 'package:flutter/material.dart';
import '../routes/rotas.dart';
import '../utils/botao.dart';
import '../utils/campoTexto.dart';

class CadastroUsuario extends StatefulWidget {
  const CadastroUsuario({Key? key}) : super(key: key);

  @override
  State<CadastroUsuario> createState() => _CadastroUsuarioState();
}

class _CadastroUsuarioState extends State<CadastroUsuario> {
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
                  Image.asset('assets/images/homem1.jpeg', fit: BoxFit.contain,),
                  Image.asset('assets/images/mulher1.jpeg',fit: BoxFit.contain,),
                  Image.asset('assets/images/homem2.jpeg', fit: BoxFit.contain,),
                  Image.asset('assets/images/mulher2.jpeg', fit: BoxFit.contain,),
                  Image.asset('assets/images/homem3.jpeg', fit: BoxFit.contain,),
                  Image.asset('assets/images/mulher3.jpeg', fit: BoxFit.contain,),
                ],
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
              const CampoTexto(
                texto: 'Nome',
                mensagem: 'Digite seu nome',
              ),
              const SizedBox(height: 10),
              const CampoTexto(
                texto: 'Email',
                mensagem: 'Digite seu Email',
              ),
              const SizedBox(height: 10),
              const CampoTexto(
                texto: 'Senha',
                mensagem: 'Digite sua senha',
              ),
              const SizedBox(height: 10),
              const CampoTexto(
                texto: 'Data de nascimento',
              ),
              const SizedBox(height: 10),
              Botao(
                text: 'Cadastrar',
                onPressed: () {
                  Rotas.pushNamed(context, '/principal');
                },
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
