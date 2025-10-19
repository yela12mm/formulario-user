import 'package:app/feature/model/modelUser.dart';
import 'package:flutter/material.dart';

class Success_wid extends StatelessWidget {
  final String nombre;
  final String correo;
  final String contrasena;
  final List<User> placeholders;

  const Success_wid({
    super.key,
    required this.nombre,
    required this.correo,
    required this.contrasena,
    required this.placeholders,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 232, 240, 254),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Color.fromARGB(255, 13, 59, 97), width: 1.5),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  blurRadius: 6,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: const Icon(Icons.person, color: Color.fromARGB(255, 13, 59, 97)),
                  title: Text("Nombre"),
                  subtitle: Text(nombre),
                ),
                ListTile(
                  leading: const Icon(Icons.email, color: Color.fromARGB(255, 13, 59, 97)),
                  title: Text("Email"),
                  subtitle: Text(correo),
                ),
                ListTile(
                  leading: const Icon(Icons.lock, color: Color.fromARGB(255, 13, 59, 97)),
                  title: Text("Contraseña"),
                  subtitle: Text(contrasena),
                ),
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: placeholders.length,
            itemBuilder: (context, index) {
              final user = placeholders[index];
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 232, 240, 254),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Color.fromARGB(255, 13, 59, 97), width: 1.5),
                ),
                child: Row(
                  children: [
                    Icon(Icons.account_circle, color: Color.fromARGB(255, 13, 59, 97), size: 32),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('ID: ${user.id}', style: const TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 13, 59, 97))),
                          Text('Nombre: ${user.name}', style: const TextStyle(color: Colors.black)),
                          Row(
                            children: [
                              Icon(Icons.email, color: Color.fromARGB(255, 13, 59, 97), size: 18),
                              const SizedBox(width: 4),
                              Text(user.email, style: const TextStyle(color: Colors.black54)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
