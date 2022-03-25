import 'package:flutter/material.dart';

class Line extends StatefulWidget {
  const Line({Key? key}) : super(key: key);

  @override
  State<Line> createState() => _LineState();
}

class _LineState extends State<Line> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomPaint(
        painter: LinePainter(),
        child: Container(),
      ),
    );
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint1 = Paint()..strokeWidth = 3.0;

    ///Paint 1
    Offset p1 = Offset(10.0, size.height / 2);
    Offset p2 = Offset(size.width - 10.0, size.height / 2);
    canvas.drawLine(p1, p2, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
