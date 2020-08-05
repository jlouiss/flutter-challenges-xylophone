import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  Expanded buildKey({Color color, String soundName}) {
    return Expanded(
      child: FlatButton(
        child: null,
        color: color,
        onPressed: () {
          player.play(soundName);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color: Colors.red, soundName: 'note1.wav'),
                buildKey(color: Colors.orange, soundName: 'note2.wav'),
                buildKey(color: Colors.yellow, soundName: 'note3.wav'),
                buildKey(color: Colors.green, soundName: 'note4.wav'),
                buildKey(color: Colors.blue, soundName: 'note5.wav'),
                buildKey(color: Colors.indigo, soundName: 'note6.wav'),
                buildKey(color: Colors.purple, soundName: 'note7.wav'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
