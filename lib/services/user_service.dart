import '../models/user.dart';
import '../database_helper.dart';

class UserService {
  final DatabaseHelper _dbHelper = DatabaseHelper();

  Future<User?> getLoggedInUser() async {
    final db = await _dbHelper.database;
    // Supondo que o usuário logado tenha ID 1 para este exemplo.
    // Em um aplicativo real, você pode ter uma forma de armazenar o ID do usuário logado, como SharedPreferences.
    final List<Map<String, dynamic>> maps = await db.query('user', where: 'id = ?', whereArgs: [1]);

    if (maps.isNotEmpty) {
      return User.fromMap(maps.first);
    } else {
      return null;
    }
  }
}
