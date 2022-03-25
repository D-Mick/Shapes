import 'package:flutter/material.dart';

class Rectangle extends StatefulWidget {
  const Rectangle({Key? key}) : super(key: key);

  @override
  State<Rectangle> createState() => _RectangleState();
}

class _RectangleState extends State<Rectangle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomPaint(
        painter: RectanglePainter(),
        child: Container(),
      ),
    );
  }
}

class RectanglePainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
        ..strokeWidth = 3.0
        ..style = PaintingStyle.stroke;

    Offset center = Offset(size.width /2, size.height/2);
    Rect rect = Rect.fromCircle(center: center, radius: 70.0);
    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}
