class Info {
  final String nombre;
  final String correo;
  final String contrasena;

  Info({required this.nombre, required this.correo, required this.contrasena});

  factory Info.fromJson(Map<String, dynamic> json) => Info(
    nombre: json['nombre'],
    correo: json['correo'],
    contrasena: json['contrasena'],
  );
}
class User {
  final int id;
  final String name;
  final String email;

  User({required this.id, required this.name, required this.email});
  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json['id'],
    name: json['name'],
    email: json['email'],
  );
}


