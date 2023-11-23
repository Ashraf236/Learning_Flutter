import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.white12,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  @override
  Widget build(BuildContext) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            //flex: 2,
            child: TextButton(
              onPressed: () {
                setState(() {
                  leftDiceNumber = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice-$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            //flex: 1,
            child: TextButton(
              onPressed: () {
                setState(() {
                  rightDiceNumber = Random().nextInt(4) + 1;
                });
              },
              child: Image.asset('images/dice-$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
