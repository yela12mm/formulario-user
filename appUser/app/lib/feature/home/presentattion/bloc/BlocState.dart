part of 'BlocBloc.dart';


sealed class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

final class Initial extends LoginState {}

class Load extends LoginState {}

class Failure extends LoginState {
}

class Success extends LoginState {
  final String nombre;
  final String correo;
  final String contrasena;

  Success({
    required this.nombre,
    required this.correo,
    required this.contrasena,
  });

  @override
  List<Object> get props => [
    nombre,
    correo,
    contrasena,
  ];
}

