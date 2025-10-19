import 'package:app/feature/home/presentattion/bloc/BlocBloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Init_wid extends StatelessWidget {
  Init_wid({super.key});

  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            width: 2.5,
            color: const Color.fromARGB(255, 13, 59, 97),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Registro",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(234, 0, 0, 0),
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Nombre'),
                validator: (value) =>
                    value == null || value.isEmpty ? 'Ingrese un nombre' : null,
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: 'Email'),
                validator: (value) =>
                    value == null || value.isEmpty ? 'Ingrese un email' : null,
              ),

              const SizedBox(height: 12),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(labelText: 'Contraseña'),
                obscureText: true,
              ),

              const SizedBox(height: 24),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 13, 59, 97),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                ),
                onPressed: () {
                  if (!_formKey.currentState!.validate()) return;

                  context.read<LoginBloc>().add(
                        Registrarse(
                          nombre: _nameController.text,
                          correo: _emailController.text,

                          contrasena: _passwordController.text,
                         
                        ),
                      );

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Enviando datos al Bloc...')),
                  );


                  _nameController.clear();
                  _emailController.clear();
                  _passwordController.clear();

                },
                child: const Text(
                  'Registrarse',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


