import 'package:flutter/material.dart';

class CardView extends StatefulWidget {
  const CardView({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color color;

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // color: const Color(0xFF1D1E33),
        color: const Color(0xFF141A3C),
      ),
      margin: const EdgeInsets.all(5),
    );
  }
}
