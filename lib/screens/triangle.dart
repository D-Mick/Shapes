import 'package:flutter/material.dart';

class Triangle extends StatefulWidget {
  const Triangle({Key? key}) : super(key: key);

  @override
  State<Triangle> createState() => _TriangleState();
}

class _TriangleState extends State<Triangle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomPaint(
        painter: TrianglePainter(),
        child: Container(),
      ),
    );
  }
}

class TrianglePainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
        ..strokeWidth = 3.0
        ..style = PaintingStyle.stroke;


    Path path = Path();
    path.moveTo(size.width/3, size.height/3);
    path.lineTo(80.0, 400.0);
    path.lineTo(size.width - 80.0, 400);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}
