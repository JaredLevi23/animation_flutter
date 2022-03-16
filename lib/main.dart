import 'package:flutter/material.dart';

import 'animation_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),
          ),
          body: Card(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.all(55),
                  width: 200,
                  height: 200,
                  child: AnimacionWave(),
                ),
                Container(
                    margin: EdgeInsets.all(55),
                    width: 200,
                    height: 200,
                    child: CustomPaint(
                      painter: _EyesPainter(),
                    )),
              ],
            ),
          )),
    );
  }
}

class _EyesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final paint = Paint();
    paint.color = Colors.black;
    paint.strokeWidth = 3;
    paint.style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(size.width * 0.4, size.height * 0.4);
    path.addOval(Rect.fromCircle(center: const Offset(60, 60), radius: 10));

    path.moveTo(size.width * 0.8, size.height * 0.4);
    path.addOval(Rect.fromCircle(center: const Offset(130, 60), radius: 10));

    path.moveTo(size.width * 0.3, size.height * 0.5);
    path.quadraticBezierTo(size.width * 0.45, size.height * 0.7,
        size.width * 0.7, size.height * 0.5);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
