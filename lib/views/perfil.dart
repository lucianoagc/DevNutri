import 'package:devnutri/common/cores.dart';
import 'package:devnutri/utils/icones.dart';
import 'package:devnutri/utils/texto.dart';
import 'package:flutter/material.dart';
import '../utils/barra.dart';
import '../models/user.dart';
import '../services/user_service.dart';  // Importe o serviço de usuário

class Perfil extends StatefulWidget {
  const Perfil({Key? key}) : super(key: key);

  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  User? _user;

  @override
  void initState() {
    super.initState();
    _loadUser();
  }

  Future<void> _loadUser() async {
    UserService userService = UserService();
    User? user = await userService.getLoggedInUser();
    setState(() {
      _user = user;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MinhasCores.preto,
      appBar: const Barra(
        text: 'Perfil',
      ),
      body: Center(
        child: _user == null
            ? CircularProgressIndicator()
            : Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // Mostrar o avatar do usuário
                        _user!.photo != null
                            ? CircleAvatar(
                                backgroundImage: AssetImage(_user!.photo!),
                                radius: 50,
                              )
                            : Icon(Icons.person, size: 100, color: MinhasCores.branco),
                        Text(
                          '${_user!.name}',
                          style: const TextStyle(
                            fontSize: 22,
                            color: MinhasCores.branco,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Texto(texto: 'Email: ${_user!.email}', tamanho: 20,),
                  Texto(texto: 'Idade: ${_calculateAge(_user!.birthdate)} anos', tamanho: 20,),
                  const SizedBox(height: 30,),
                  const Texto2(text: 'Preferencias',)
                ],
              ),
      ),
      bottomNavigationBar: const Icones(),
    );
  }

  int _calculateAge(String birthdate) {
  DateTime birthDate = DateTime.parse(birthdate);
  DateTime today = DateTime.now();
  
  int age = today.year - birthDate.year;
  
  if (today.month < birthDate.month || (today.month == birthDate.month && today.day < birthDate.day)) {
    age--;
  }
  
  return age;
}

}
