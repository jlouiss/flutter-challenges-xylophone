import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

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
                Expanded(
                  child: FlatButton(
                    child: null,
                    color: Colors.red,
                    onPressed: () {
                      player.play('note1.wav');
                    },
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    child: null,
                    color: Colors.orange,
                    onPressed: () {
                      player.play('note2.wav');
                    },
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    child: null,
                    color: Colors.yellow,
                    onPressed: () {
                      player.play('note3.wav');
                    },
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    child: null,
                    color: Colors.green,
                    onPressed: () {
                      player.play('note4.wav');
                    },
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    child: null,
                    color: Colors.blue,
                    onPressed: () {
                      player.play('note5.wav');
                    },
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    child: null,
                    color: Colors.indigo,
                    onPressed: () {
                      player.play('note6.wav');
                    },
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    child: null,
                    color: Colors.purple,
                    onPressed: () {
                      player.play('note7.wav');
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
