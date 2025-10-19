  import 'package:app/feature/home/presentattion/cubit/home_cubit.dart';
  import 'package:app/feature/home/presentattion/widgets/Success_widget.dart';
  import 'package:app/feature/home/presentattion/widgets/failure_widget.dart';
  import 'package:app/feature/home/presentattion/widgets/loading_widget.dart';
  import 'package:app/feature/home/presentattion/widgets/userPhoto.dart';
import 'package:app/feature/model/modelUser.dart';
  import 'package:flutter/material.dart';
  import 'package:flutter_bloc/flutter_bloc.dart';

  class HomeView extends StatelessWidget {
    final String nombre;
    final String correo;
    final String contrasena;


    const HomeView({
      super.key,
      this.nombre="",
      this.correo="",
      this.contrasena="",

    });

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'Bienvenido, $nombre ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 13, 59, 97),
        ),
        body: Column(
          children: [
            const SizedBox(height: 40),
            const UserPhoto(),
            Expanded(
              child:BlocProvider(
                create: (context) => HomeCubit()..fetchData(

                ),
                child: BlocBuilder<HomeCubit, HomeState>(
                  builder: (context, state) {
                    if (state is HomeSuccess) {
                      return 
                          Success_wid(
                            nombre: nombre,
                            correo: correo,
                            contrasena: contrasena,
                            placeholders: state.placeholders,
                      );
                    } else if (state is HomeFailure) {
                      return Fail_wid();
                    }else{
                       return Load_Wid();
                    }
                   
                  },
                ),
              ), 
            )
          ]
        )


    );
  }
}

