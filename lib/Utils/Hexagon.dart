import 'dart:math' as math;

import 'package:flutter/material.dart';

class Hexagon extends StatelessWidget {
  final String text;
  final double size;
  final Color color;

  Hexagon({required this.text, this.size = 100, this.color = Colors.blue});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      child: Stack(
        children: [
          CustomPaint(
            painter: _HexagonPainter(color: color),
            size: Size(size, size),
          ),
          Center(
            child: Text(
              text ?? " ",
              style: TextStyle(
                color: Colors.blue,
                fontSize: size / 4,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _HexagonPainter extends CustomPainter {
  final Color color;

  _HexagonPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()..color = color;
    final double sideLength = size.width / 2;
    final double centerX = size.width / 2;
    final double centerY = size.height / 2;
    final Path path = Path();

    path.moveTo(centerX + sideLength * math.cos(0), centerY + sideLength * math.sin(0));

    for (int i = 1; i <= 6; i++) {
      final double angle = 2.0 * math.pi / 6 * i;
      final double x = centerX + sideLength * math.cos(angle);
      final double y = centerY + sideLength * math.sin(angle);
      path.lineTo(x, y);
    }

    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(_HexagonPainter oldDelegate) => color != oldDelegate.color;
}
