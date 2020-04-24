import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.blueAccent,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDicerNumber = 1;
  int rightDicerNumber = 1;

  void changeDiceFace() {
    setState(() {
      leftDicerNumber = Random().nextInt(6) + 1;
      rightDicerNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
          children: <Widget>[
            Expanded(
                child: FlatButton(
                    onPressed: () {
                      changeDiceFace();
                    },
                    child: Image.asset('images/dice$leftDicerNumber.png')
                )
            ),
            Expanded(
                child: FlatButton(
                    onPressed: () {
                      changeDiceFace();
                    },
                    child: Image.asset('images/dice$rightDicerNumber.png')
                )
            ),
          ],
        )
    );
  }
}