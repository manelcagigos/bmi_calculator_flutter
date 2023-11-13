import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reusable_card.dart';
import '../components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({
    super.key,
    required this.bmiResult,
    required this.interpretation,
    required this.resultsText,
  });

  final String bmiResult;
  final String resultsText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.all(15.0),
              child: const Text(
                'Your Results',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colores: kInactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultsText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    style: kBoydTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onTap2: () {
              Navigator.pop(context);
            },
            buttonTitle: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
