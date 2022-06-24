import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({Key? key, required this.resultScore}) : super(key: key);

  final int resultScore;

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 15) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 20) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 30) {
      resultText = 'You are ... strange!?';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: const TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
