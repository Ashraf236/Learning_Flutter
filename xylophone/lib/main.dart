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

  Expanded xyloKey({required int noteKey, required Color color}) {
    return Expanded(
      child: TextButton(
        style: ElevatedButton.styleFrom(primary: color),
        onPressed: () {
          playSound(noteKey);
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              xyloKey(noteKey: 1, color: Colors.redAccent),
              xyloKey(noteKey: 2, color: Colors.greenAccent),
              xyloKey(noteKey: 3, color: Colors.blueAccent),
              xyloKey(noteKey: 4, color: Colors.orangeAccent),
              xyloKey(noteKey: 5, color: Colors.purpleAccent),
              xyloKey(noteKey: 6, color: Colors.pinkAccent),
            ],
          ),
        ),
      ),
    );
  }
}
