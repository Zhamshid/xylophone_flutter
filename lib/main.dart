import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XyloPhone());
}

class XyloPhone extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('assets_note$soundNumber.wav');
  }

  Expanded buildKey({required Color color, required int soundNumber,required String name}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);

        },
        child: Text(
          name,
          style: TextStyle(
            letterSpacing: 5,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'Times',
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red,soundNumber: 1,name: 'Note 1'),
              buildKey(color: Colors.orange,soundNumber: 2,name: 'Note 2'),
              buildKey(color: Colors.yellow,soundNumber: 3,name: 'Note 3'),
              buildKey(color: Colors.green,soundNumber: 4,name: 'Note 4'),
              buildKey(color: Colors.teal,soundNumber: 5,name: 'Note 5'),
              buildKey(color: Colors.blue,soundNumber: 6,name: 'Note 6'),
              buildKey(color: Colors.purple,soundNumber: 7,name: 'Note 7'),
            ],
          ),
        ),
      ),
    );
  }
}
