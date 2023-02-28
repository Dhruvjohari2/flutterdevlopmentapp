import 'dart:math';

import 'package:flutter/material.dart';

class MagicBall extends StatefulWidget {
  const MagicBall({Key? key}) : super(key: key);

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int magicBall = 1;

  void magicBall8() {
    setState(() {
      magicBall = Random().nextInt(3) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: const Text('Ask me anything'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            setState(() {
              magicBall8();
            });
          },
          child: Image.asset("assets/images/dice$magicBall.png"),
        ),
      ),
    );
  }
}
