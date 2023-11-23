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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            //flex: 2,
            child: Image.asset('images/dice-1.png'),
          ),
          Expanded(
            //flex: 1,
            child: Image.asset('images/dice-2.png'),
          ),
        ],
      ),
    );
  }
}
