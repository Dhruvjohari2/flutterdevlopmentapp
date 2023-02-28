import 'package:flutter/material.dart';

class Xylophone extends StatefulWidget {
  const Xylophone({Key? key}) : super(key: key);

  @override
  State<Xylophone> createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Xylophone'),
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () async {
              // final player = AudioPlayer();
              // await player.play(
              //   AssetSource("assets/audios/StarWars3.wav"),
              // );
            },
            child: const Text('click Me'),
          ),
        ],
      ),
    );
  }
}
