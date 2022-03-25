import 'package:flutter/material.dart';

class CurvesArc extends StatefulWidget {
  const CurvesArc({Key? key}) : super(key: key);

  @override
  State<CurvesArc> createState() => _CurvesArcState();
}

class _CurvesArcState extends State<CurvesArc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomPaint(
        painter: CurvePainter(),
        child: Container(),
      ),
    );
  }
}

class CurvePainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
        ..strokeWidth = 3.0
      ..color = Colors.black
        ..style = PaintingStyle.fill;

    var path = Path()
    ..moveTo(0.0, 0.0)
    ..lineTo(0.0, 200.0)
      ..quadraticBezierTo(size.width / 2, 250, size.width, 200.0)
    ..lineTo(size.width, 0.0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}
