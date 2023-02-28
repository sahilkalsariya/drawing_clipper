import 'package:flutter/material.dart';

class ClipCurvePath extends StatefulWidget {
  const ClipCurvePath({Key? key}) : super(key: key);

  @override
  State<ClipCurvePath> createState() => _ClipCurvePathState();
}

class _ClipCurvePathState extends State<ClipCurvePath> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clip Curve"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipPath(
              clipper:MyClipper(),
              child: Image.asset("assets/image/pexels-tobias-bjørkli-2113566.jpg",width: 350),
            )
          ],
        ),
      )
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {

    Path path = Path();

    path.moveTo(0, size.height * 0.5);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.60, size.width * 0.5, size.height * 0.5);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.40, size.width, size.height * 0.5);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;

    /* 1st Design */

    // Path path = Path();
    //
    // path.lineTo(size.width * 0.5 , size.height *0.5);
    // path.lineTo(size.width, 0);
    // path.lineTo(size.width, size.height);
    // path.lineTo(0, size.height);
    // path.close();
    //
    // return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;

}
