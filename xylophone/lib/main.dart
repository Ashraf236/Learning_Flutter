import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatefulWidget {
  const Xylophone({super.key});

  @override
  State<Xylophone> createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  void playSound(int fileNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$fileNumber.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TextButton(
                  style: ElevatedButton.styleFrom(primary: Colors.redAccent),
                  onPressed: () {
                    playSound(1);
                  },
                  child: Text(''),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: ElevatedButton.styleFrom(primary: Colors.greenAccent),
                  onPressed: () {
                    playSound(2);
                  },
                  child: Text(''),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: ElevatedButton.styleFrom(primary: Colors.blueAccent),
                  onPressed: () {
                    playSound(3);
                  },
                  child: Text(''),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: ElevatedButton.styleFrom(primary: Colors.orangeAccent),
                  onPressed: () {
                    playSound(4);
                  },
                  child: Text(''),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: ElevatedButton.styleFrom(primary: Colors.pink),
                  onPressed: () {
                    playSound(5);
                  },
                  child: Text(''),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.purpleAccent),
                  onPressed: () {
                    playSound(6);
                  },
                  child: Text(''),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
