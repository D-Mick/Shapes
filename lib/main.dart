import 'package:flutter/material.dart';
import 'package:linear_progress/linear_progress.dart';
import 'package:linear_progress/screens/circle.dart';
import 'package:linear_progress/screens/curves.dart';
import 'package:linear_progress/screens/line.dart';
import 'package:linear_progress/screens/rectangle.dart';
import 'package:linear_progress/screens/trapezium.dart';
import 'package:linear_progress/screens/triangle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CurvesArc(),
    );
  }
}

