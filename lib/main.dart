import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height - 300,
        child: Transform.rotate(
          angle: 0,
          child: Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: CustomPaint(
              size: const Size(500, 500),
              painter: CustomBezierPainter(),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomBezierPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();
    final paint = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.red;

    // controller point

    const controllerPoint = Offset(50, 300);

    //end point
    final endPoint = Offset(size.width - 20, 0);
    path.quadraticBezierTo(
      controllerPoint.dx,
      controllerPoint.dy,
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


// quadratic cubic bezier: this method has three points, the first is added by default is 0 and size.height, (x1, y1) is controller point and (x2, y2) is end point.