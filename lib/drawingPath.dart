import 'package:flutter/material.dart';

class DrawingPathPage extends StatefulWidget {
  const DrawingPathPage({Key? key}) : super(key: key);

  @override
  State<DrawingPathPage> createState() => _DrawingPathPageState();
}

class _DrawingPathPageState extends State<DrawingPathPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawing Path"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomPaint(
              foregroundPainter: MyPainter(),
              child: Container(
                height: 300,
                width: 300,
                color: Colors.amber,
              ),
            )
          ],
        ),
      ),
    );
  }
}


class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {


    /*  1st Design */

    // Paint brush1 = Paint();
    //
    // brush1.color = Colors.red;
    // brush1.strokeWidth = 3 ;
    // brush1.style = PaintingStyle.stroke;
    //
    // Path path = Path();
    //
    // path.moveTo(size.width * 0.5, 0);  // move to aetle start point .. by defults 0,0 left corner thi start thai .. aene change karva mate moveTo ne potion aapi ne karvu aetle moveTo point aapva
    // path.lineTo(size.width, size.height);
    //
    // path.moveTo(size.width *  0.5, 0 );
    // path.lineTo(0, size.height);
    //
    // canvas.drawPath(path, brush1);


    /* 2nd Design */

    // Paint brush1 = Paint();
    //
    // brush1.color = Colors.red;
    // brush1.strokeWidth = 3;
    // brush1.style = PaintingStyle.fill;
    //
    // Path path = Path();
    //
    // path.lineTo(size.width, size.height);
    // path.lineTo(0, size.height);
    // path.close(); // close karvathi jyathi start kariyu hoe tya aavi ne close thai jay path..
    //
    // canvas.drawPath(path, brush1);


    Paint brush1 = Paint();

    brush1.color = Colors.red;
    brush1.strokeWidth = 3;
    brush1.style = PaintingStyle.stroke;

    Path path = Path();

    path.moveTo(0, size.height * 0.5);
    path.quadraticBezierTo(size.width * 0.5 , size.height, size.width, size.height * 0.5);  // curve karva mate ... / Controlpoint 1 , controlpoint 2 , Destination 1 , Destination  2 //

    canvas.drawPath(path, brush1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;  // ahoya true return karo to live chnage karva mate .. live render thai

}