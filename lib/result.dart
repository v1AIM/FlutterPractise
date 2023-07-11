import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  final VoidCallback restHandler;

  Result(this.resultScore, this.restHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 15) {
      resultText = "You are So BAD";
    } else if (resultScore <= 12) {
      resultText = "Prestty Likable";
    } else if (resultScore <= 16) {
      resultText = "You are ..... Strange ? ";
    } else if (resultScore >= 20) {
      resultText = " Awesome JOB !";
    } else {
      resultText = " Awesome JOB !";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: restHandler,
            child: Text('Restart Quiz!'),
          )
        ],
      ),
    );
  }
}
