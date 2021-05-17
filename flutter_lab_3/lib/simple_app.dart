import 'package:flutter/material.dart';

class SimpleApp extends StatefulWidget {
  @override
  _SimpleAppState createState() => _SimpleAppState();
}

class _SimpleAppState extends State<SimpleApp> {
  String str = '';

  void addToStr(val) {
    setState(() {
      str += '$val';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Center(
            child: Text(str),
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              onPressed: () => addToStr('+1'),
              child: Icon(Icons.plus_one),
            ),
            FloatingActionButton(
              onPressed: () => addToStr('-1'),
              child: Icon(Icons.exposure_minus_1),
            ),
          ],
        ),
      ),
    );
  }
}
