import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  const CardView({
    Key? key,
    required this.color,
     required this.pressed,
     required this.cardChild,
  }) : super(key: key);

  final Color color;
  final Widget cardChild;
  final VoidCallback pressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        margin: const EdgeInsets.all(5),
        child: cardChild,
      ),
    );
  }
}
