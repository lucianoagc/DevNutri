class User {
  int? id;
  String name;
  String email;
  String password;
  String birthdate;
  String? photo;

  User({this.id, required this.name, required this.email, required this.password, required this.birthdate, this.photo});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'password': password,
      'birthdate': birthdate,
      'photo': photo,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'],
      name: map['name'],
      email: map['email'],
      password: map['password'],
      birthdate: map['birthdate'],
      photo: map['photo'],
    );
  }
}
