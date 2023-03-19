import 'package:flutter/material.dart';
import 'package:i_am_rich/BMI%20calculator/bmi_calculator.dart';
import 'package:i_am_rich/BMI%20calculator/components/bottom_button.dart';
import 'package:i_am_rich/BMI%20calculator/constants.dart';
import 'package:i_am_rich/BMI%20calculator/components/resuablecard.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      backgroundColor: kBackgroundColour,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: CardView(
              color: kActiveCardColour,
              pressed: () {},
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'Normal',
                    style: kResultTextStyle,
                  ),
                  Text(
                    '18.3',
                    style: kBMITextStyle,
                  ),
                  Text(
                    'Your BMI result is quite low,you should eat more!',
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BMICalculator(),
                ),
              );
            },
            buttonTitle: 'Re-Calculate',
          ),
        ],
      ),
    );
  }
}
