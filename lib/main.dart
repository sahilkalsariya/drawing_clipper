import 'dart:js';

import 'package:flutter/material.dart';
import 'clipCurvePath.dart';
import 'cliptype.dart';
import 'drawingCanvas.dart';
import 'drawingPath.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => MyApp(),
          'drawingCanvas': (context) => DrawingCanvasPage(),
          'drawingPath': (context) => DrawingPathPage(),
          'cliptype' : (context) => ClipType(),
          'clipCurvePath' : (context) => ClipCurvePath(),
        },
      )
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        centerTitle: true,
      ),
      body: Align(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              Navigator.of(context).pushReplacementNamed('drawingCanvas');
            }, child: Text("Drawing Canvas")),

            SizedBox(height: 10),
            ElevatedButton(onPressed: () {
              Navigator.of(context).pushReplacementNamed('drawingPath');
            }, child: Text("Drawing Path")),
            SizedBox(height: 10),
            ElevatedButton(onPressed: () {
              Navigator.of(context).pushReplacementNamed('cliptype');
            }, child: Text("Clip Type")),
            SizedBox(height: 10),
            ElevatedButton(onPressed: () {
              Navigator.of(context).pushReplacementNamed('clipCurvePath');
            }, child: Text("Clip Curve Path")),
          ],
        ),
      ),
    );
  }
}
