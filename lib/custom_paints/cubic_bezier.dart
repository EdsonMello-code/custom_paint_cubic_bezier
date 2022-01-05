import 'package:flutter/material.dart';

class CubicBezier extends StatelessWidget {
  const CubicBezier({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomPaint(
          size: const Size(double.infinity, 200),
          painter: CustomCubicBezierPainter(),
        ),
      ),
    );
  }
}

class CustomCubicBezierPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();
    final paint = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.red;

    // end point
    final endPoint = Offset(size.width, 0);

    // first controller point
    const firstPointController = Offset(200, 200);

    // second controller point
    const secondPointController = Offset(300, -300);

    path.cubicTo(
      firstPointController.dx,
      firstPointController.dy,
      secondPointController.dx,
      secondPointController.dy,
      endPoint.dx,
      endPoint.dy,
    );
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

// cubic bezier has four point two point of controller and one point alread puted by default in begin and end point,