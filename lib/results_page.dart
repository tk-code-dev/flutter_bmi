import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Normal',
                      style: kResultTextStyle,
                    ),
                    Text(
                      '18.6',
                      style: kBMITextStyle,
                    ),
                    Text(
                      'Your BMI is low.',
                      style: kBodyTextStyle,
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
