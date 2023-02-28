import 'package:flutter/material.dart';

class DrawingCanvasPage extends StatefulWidget {
  const DrawingCanvasPage({Key? key}) : super(key: key);

  @override
  State<DrawingCanvasPage> createState() => _DrawingCanvasPageState();
}

class _DrawingCanvasPageState extends State<DrawingCanvasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawing Canvas"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomPaint(
              foregroundPainter: MyPainter(),
              // painter: MyPainter(), // backgrounds ma drawing karva mate...
              child: Container(
                height: 300,
                width: 300,
                color: Colors.amber,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint brush1 = Paint();
    Paint brush2 = Paint();

    brush1.color = Colors.red;
    brush1.strokeWidth = 3;
    brush1.strokeCap = StrokeCap.square;
    brush1.style = PaintingStyle.fill;


    brush2.color = Colors.green;
    brush2.strokeWidth = 4;

    Offset p1 = Offset(0, 0);
    Offset p2 = Offset(size.width, size.height);
    Offset p3 = Offset(size.width,0);
    Offset p4 = Offset(0,size.height);

    canvas.drawLine(p3, p4, brush2); // 1st line Draw Thase and jya end point hoe tya j ubhu rehse..
    canvas.drawCircle(Offset(size.width * 0.5, size.height * 0.5), 80, brush1); // 2st line Draw Thase adn end point p2 hovathi tyathi p3 ma line jase ..
    canvas.drawLine(p1, p2, brush2); // 3st line Draw Thase
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

}
