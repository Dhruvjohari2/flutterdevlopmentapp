import 'dart:math';
import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void dice() {
    setState(() {
      leftDiceNumber = Random().nextInt(3) + 1;
      rightDiceNumber = Random().nextInt(3) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Center(child: Text('Dice')),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  dice();
                },
                child: Image.asset('assets/images/dice$leftDiceNumber.png'),
              ),
            ),
            Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      dice();
                    });
                  },
                  child: Image.asset('assets/images/dice$rightDiceNumber.png')),
            ),
          ],
        ),
      ),
    );
  }
}
