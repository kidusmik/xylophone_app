import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    XylophoneApp(),
  );
}

class XylophoneApp extends StatelessWidget {
  // const XylophoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Column(
            children: [
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith(
                      (states) => Colors.pink.shade300),
                ),
                onPressed: () {
                  final player = AudioCache();
                  player.play('assets_note1.wav');
                },
                child: Text(''),
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith(
                      (states) => Colors.red.shade900),
                ),
                onPressed: () {
                  final player = AudioCache();
                  player.play('assets_note2.wav');
                },
                child: Text(''),
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith(
                      (states) => Colors.blue.shade900),
                ),
                onPressed: () {
                  final player = AudioCache();
                  player.play('assets_note3.wav');
                },
                child: Text(''),
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateColor.resolveWith((states) => Colors.yellow),
                ),
                onPressed: () {
                  final player = AudioCache();
                  player.play('assets_note4.wav');
                },
                child: Text(''),
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateColor.resolveWith((states) => Colors.grey),
                ),
                onPressed: () {
                  final player = AudioCache();
                  player.play('assets_note5.wav');
                },
                child: Text(''),
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateColor.resolveWith((states) => Colors.green),
                ),
                onPressed: () {
                  final player = AudioCache();
                  player.play('assets_note6.wav');
                },
                child: Text(''),
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateColor.resolveWith((states) => Colors.purple),
                ),
                onPressed: () {
                  final player = AudioCache();
                  player.play('assets_note7.wav');
                },
                child: Text(''),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
