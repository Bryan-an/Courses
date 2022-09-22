import 'package:flutter/material.dart';
import './my_canvas_painter.dart';

class MyCanvasWidget extends StatelessWidget {
  const MyCanvasWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomPaint(painter: MyCanvasPainter()),
    );
  }
}
