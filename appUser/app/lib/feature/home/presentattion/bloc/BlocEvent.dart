part of 'BlocBloc.dart';

sealed class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class Registrarse extends LoginEvent {
  final String nombre;
  final String correo;  
  final String contrasena;

  const Registrarse({
    required this.nombre,
    required this.correo,
    required this.contrasena,
  });

  @override
  List<Object> get props => [nombre, correo, contrasena];
}

