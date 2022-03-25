import 'package:flutter/material.dart';


class Trapezium extends StatefulWidget {
  const Trapezium({Key? key}) : super(key: key);

  @override
  State<Trapezium> createState() => _TrapeziumState();
}

class _TrapeziumState extends State<Trapezium> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomPaint(
        painter: TrapeziumPainter(),
        child: Container(),
      ),
    );
  }
}

class TrapeziumPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
        ..strokeWidth = 3.0
        ..style = PaintingStyle.stroke;


    Path path = Path();
    path.moveTo(size.width - 90.0, size.height /3);
    path.lineTo(size.width / 4, size.height / 3);
    path.lineTo(50.0, 400.0);
    path.lineTo(size.width - 30.0, 400.0);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}