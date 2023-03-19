import 'package:flutter/material.dart';
import 'package:i_am_rich/BMI%20calculator/constants.dart';

class IconContent extends StatelessWidget {
  const IconContent({
    super.key,
    required this.icon,
    required this.label,
  });

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        const SizedBox(
          height: 50,
        ),
        Text(
          label,
          style: kLabelTextstyle,),
      ],
    );
  }
}
