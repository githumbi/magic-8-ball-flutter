import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Ask Me anything'),
          ),
          body: magicBall(),
        ),
      ),
    );

class magicBall extends StatefulWidget {
  @override
  _magicBallState createState() => _magicBallState();
}

class _magicBallState extends State<magicBall> {
  @override
  int ball = 1;
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(child:
          FlatButton(onPressed: () {
            setState(() {
              ball = Random().nextInt(5) + 1;
              print('button clicked');
            });
          },
              child:  Image.asset('images/ball$ball.png')))

        ],
      ),
    );
  }
}
