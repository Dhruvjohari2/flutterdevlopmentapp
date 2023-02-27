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
        children: const [
          Center(
            child: Text('hello'),
          ),
        ],
      ),
    );
  }
}
