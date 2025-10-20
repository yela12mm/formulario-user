import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PurpleForm extends StatelessWidget {
  const PurpleForm({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: Header1(),
      ),
    );
  }
}
class Header1 extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size){
    final pencil=Paint();
    pencil.color=const Color.fromARGB(255, 8, 3, 49);
    pencil.style=PaintingStyle.fill;
    pencil.strokeWidth=10;
    final path=Path();
    path.lineTo(0, size.height*0.25);
    path.lineTo(size.width*0.1, size.height*0.35);
    path.lineTo(size.width*0.7, size.height*0.45);
    path.lineTo(size.width, size.height*0.3);
    path.lineTo(size.width, 0);
    canvas.drawPath(path,pencil);
    
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
class Blue extends StatelessWidget {
  const Blue({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: Header2(),
      ),
    );
  }
}

class Header2 extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size){
    final pencill=Paint();
    pencill.color=const Color.fromARGB(255, 21, 12, 94);
    pencill.style=PaintingStyle.fill;
    pencill.strokeWidth=10;
    final path=Path();
    path.lineTo(0, size.height*0.25);
    path.quadraticBezierTo(size.width*0.1, size.height*0.35, size.width*0.7, size.height*0.45);
    canvas.drawPath(path,pencill);
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
class Green extends StatelessWidget {
  const Green({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: Header3(),
      ),
    );
  }
}
 class Header3 extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size){
    final pencill=Paint();
    pencill.color=const Color.fromARGB(255, 24, 21, 54);
    pencill.style=PaintingStyle.fill;
    pencill.strokeWidth=10;
    final path=Path();
    path.lineTo(size.width*0.8, size.height*0.25);
    path.lineTo(size.width*0.1, size.height*0.35);
    canvas.drawPath(path,pencill);
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
class Azul extends StatelessWidget {
  const Azul({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: Header4(),
      ),
    );
  }
}

class Header4 extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size){
    final pencill=Paint();
    pencill.color=const Color.fromARGB(255, 8, 0, 68);
    pencill.style=PaintingStyle.fill;
    pencill.strokeWidth=10;
    final path=Path();
    path.lineTo(0, size.height*0.02);
    path.lineTo(size.width, size.height*0.2);
    path.lineTo(size.width, 0);


    canvas.drawPath(path,pencill);
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
class Triangle extends StatelessWidget {
  const Triangle({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: OppositeTriangle(),
      ),
    );
  }
}

class OppositeTriangle extends CustomPainter {    
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color.fromARGB(255, 13, 15, 43) // tono oscuro similar al tuyo
      ..style = PaintingStyle.fill
      ..strokeWidth = 2;    

    final path = Path();

    // Empieza en la esquina superior derecha
    path.moveTo(size.width, 0);

    // Punta izquierda del triángulo (alineada con la figura principal)
    path.lineTo(size.width * 0.7, size.height * 0.25);

    // Parte inferior derecha del triángulo (alineada con el borde inferior de la figura principal)
    path.lineTo(size.width, size.height * 0.25);

    // Cierra el triángulo
    path.close();

    canvas.drawPath(path, paint);
  }

  @override 
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false; 
}
