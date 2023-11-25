import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatefulWidget {
  const Xylophone({super.key});

  @override
  State<Xylophone> createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TextButton(
                style: ElevatedButton.styleFrom(primary: Colors.red),
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('note2.wav'));
                },
                child: Text(''),
              ),
              TextButton(
                style: ElevatedButton.styleFrom(primary: Colors.red),
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('note2.wav'));
                },
                child: Text(''),
              ),
              TextButton(
                style: ElevatedButton.styleFrom(primary: Colors.red),
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('note2.wav'));
                },
                child: Text(''),
              ),
              TextButton(
                style: ElevatedButton.styleFrom(primary: Colors.red),
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('note2.wav'));
                },
                child: Text(''),
              ),
              TextButton(
                style: ElevatedButton.styleFrom(primary: Colors.red),
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('note2.wav'));
                },
                child: Text(''),
              ),
              TextButton(
                style: ElevatedButton.styleFrom(primary: Colors.red),
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('note2.wav'));
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
