import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlue[600],
        appBar: AppBar(
          title: Center(child: Text('Guess what is coming...')),
          backgroundColor: Colors.lightBlue[900],
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftButton = Random().nextInt(6) + 1;
  int rightButton = Random().nextInt(6) + 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  leftButton = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$leftButton.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  rightButton = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$rightButton.png'),
            ),
          ),
        ],
      ),
    );
  }
}
