import 'package:flutter/material.dart';
import 'package:i_am_rich/BMI%20calculator/resuablecard.dart';

class BMICalculator extends StatefulWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D1E26),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1D1E26),
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: CardView(
                    color: Color(0xFF141A3C),
                  ),
                ),
                Expanded(
                  child: CardView(
                    color: Color(0xFF141A3C),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: CardView(
              color: Color(0xFF141A3C),
            ),
          ),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: CardView(
                    color: Color(0xFF141A3C),
                  ),
                ),
                Expanded(
                  child: CardView(
                    color: Color(0xFF141A3C),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
