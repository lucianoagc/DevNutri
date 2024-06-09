import 'package:devnutri/database_helper.dart';
import 'package:devnutri/models/user.dart';

class AuthHelper {
  static final AuthHelper _instance = AuthHelper._internal();
  factory AuthHelper() => _instance;

  AuthHelper._internal();

  Future<User?> login(String email, String password) async {
    DatabaseHelper db = DatabaseHelper();
    return await db.getUserByEmailAndPassword(email, password);
  }

  Future<int> register(User user) async {
    DatabaseHelper db = DatabaseHelper();
    return await db.createUser(user);
  }

  Future<bool> isLoggedIn() async {
    // Implementar lógica para verificar se o usuário está logado
    // Por exemplo, verificar se há um token de acesso válido
    return false; // Retorna false por padrão
  }
}