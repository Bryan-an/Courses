import 'package:flutter/material.dart';

class MyCanvasPainter extends CustomPainter {
  const MyCanvasPainter();

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()..color = Colors.amber;
    canvas.drawCircle(const Offset(100.0, 200.00), 40.0, paint);
    final Paint paintRect = Paint()..color = Colors.lightBlue;
    final Rect rect = Rect.fromPoints(
      const Offset(150.0, 300.0),
      const Offset(300.0, 400.0),
    );
    canvas.drawRect(rect, paintRect);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
