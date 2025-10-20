import 'package:app/feature/home/presentattion/widgets/formas.dart';
import 'package:flutter/material.dart';
 class Homee extends StatelessWidget {
  const Homee({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PurpleForm(),
          Blue(),
          Green(),
          Azul(),
          Triangle(),

          
        ],
      )
    );
  }
}