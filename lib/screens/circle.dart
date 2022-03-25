import 'package:flutter/material.dart';

class Circle extends StatefulWidget {
  const Circle({Key? key}) : super(key: key);

  @override
  State<Circle> createState() => _CircleState();
}

class _CircleState extends State<Circle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomPaint(
        painter: CirclePainter(),
        child: Container(),
      ),
    );
  }
}

class CirclePainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
        ..strokeWidth = 3.0
        ..style = PaintingStyle.stroke;


    Offset center = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(center, 100.0, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}
