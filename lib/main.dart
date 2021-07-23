import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  // const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int soundNum) {
    final player = AudioCache();
    player.play('assets_note$soundNum.wav');
  }

  Expanded buildKey(Color color, int keyNum) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateColor.resolveWith((states) => color),
        ),
        onPressed: () {
          playSound(keyNum);
        },
        child: Text(''),
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(Colors.red.shade900, 1),
              buildKey(Colors.teal, 2),
              buildKey(Colors.pink.shade900, 3),
              buildKey(Colors.yellow, 4),
              buildKey(Colors.orange.shade900, 5),
              buildKey(Colors.green, 6),
              buildKey(Colors.purple.shade900, 7),
            ],
          ),
        ),
      ),
    );
  }
}
