import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Image(
            image: AssetImage('images/Transparente.png'),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(child: Text('Zero Day Code')),
        ),
      ),
    ),
  );
}
