import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftRandomNumber = 1;
  int rightRandomNumber = 1;
  Random random = new Random();

  void rollDice() {
    Random random = new Random();
    leftRandomNumber = random.nextInt(6) + 1;
    rightRandomNumber = random.nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  rollDice();
                });
              },
              child: Image.asset('images/dice$leftRandomNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  rollDice();
                });
              },
              child: Image.asset('images/dice$rightRandomNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
