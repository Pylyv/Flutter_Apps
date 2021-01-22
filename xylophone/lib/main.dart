import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(String animalSound) {
    final player = AudioCache();
    player.play('$animalSound.wav');
  }

  Expanded buildKey({Color color, String animalSound, String animalImage}) {
    return Expanded(
      child: FlatButton(
        color: color,
        child: Image(
          image: AssetImage('images/$animalImage.png'),
        ),
        onPressed: () {
          playSound(animalSound);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.amber[900],
          title: Center(child: Text('Play with Me!')),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(
                    color: Colors.red,
                    animalSound: 'bird',
                    animalImage: 'bird'),
                buildKey(
                    color: Colors.orange,
                    animalSound: 'cat',
                    animalImage: 'cat'),
                buildKey(
                    color: Colors.yellow,
                    animalSound: 'dog',
                    animalImage: 'dog'),
                buildKey(
                    color: Colors.teal,
                    animalSound: 'chicken',
                    animalImage: 'chicken'),
                buildKey(
                    color: Colors.green,
                    animalSound: 'pig',
                    animalImage: 'pig'),
                buildKey(
                    color: Colors.blue,
                    animalSound: 'sheep',
                    animalImage: 'sheep'),
                buildKey(
                    color: Colors.purple,
                    animalSound: 'elephant',
                    animalImage: 'elephant'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
