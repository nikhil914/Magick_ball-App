import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask me Anything'),
          backgroundColor: Colors.blue.shade800,
        ),
        body: DiceBall(),
      ),
    ),
  );
}

class DiceBall extends StatefulWidget {
  @override
  _DiceBallState createState() => _DiceBallState();
}

class _DiceBallState extends State<DiceBall> {
  int c = 1;
  void click() {
    c = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
                onPressed: () {
                  setState(() {
                    click();
                  });
                },
                child: Image.asset('images/ball$c.png')),
          ),
        ],
      ),
    );
  }
}
