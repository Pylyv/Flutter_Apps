import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            'images/fundo2.jpg',
          ),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Center(
            child: Text(
              'Ask Me Anything!',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Bungee Inline',
                fontSize: 20.0,
              ),
            ),
          ),
        ),
        body: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FlatButton(
          child: Image.asset(
            'images/ball$ballNumber.png',
          ),
          onPressed: () {
            setState(
              () {
                ballNumber = Random().nextInt(5) + 1;
              },
            );
          },
        ),
      ),
    );
  }
}
