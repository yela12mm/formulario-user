import 'package:app/feature/home/presentattion/bloc/BlocBloc.dart';
import 'package:app/feature/home/presentattion/views/Home_view.dart';
import 'package:app/feature/home/presentattion/widgets/failure_widget.dart';
import 'package:app/feature/home/presentattion/widgets/initial_widget.dart';
import 'package:app/feature/home/presentattion/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => LoginBloc(),
        child: BlocConsumer<LoginBloc, LoginState>(
          listener: (context, state) {
            if (state is Success) {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => HomeView(
                    nombre: state.nombre,
                    correo: state.correo,
                    contrasena: state.contrasena,
                  ),
                ),
              );
            }
          },
          builder: (context, state) {
            if (state is Initial) {
              return Init_wid();
            } else if (state is Load) {
              return Load_Wid();
            } else if (state is Failure) {
              return Fail_wid();
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}

