import 'package:app/feature/service/servicio.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'BlocEvent.dart';
part 'BlocState.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final ServiceHome api = ServiceHome();

  LoginBloc() : super(Initial()) {
    on<Registrarse>((event, emit) async {
      emit(Load());

      try {
        final response = await api.infoFormulario(
          nombre: event.nombre,
          correo: event.correo,
          contrasena: event.contrasena,
        );

        print(response);

        emit(
          Success(
            nombre: response.nombre,
            correo: response.correo,
            contrasena: response.contrasena,

          ),
        );
      } catch (e) {
        emit(Failure());
      }
    });
  }
}

