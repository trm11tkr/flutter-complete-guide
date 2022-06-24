import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({Key? key, required this.resultScore, required this.restHandler})
      : super(key: key);

  final int resultScore;
  final VoidCallback restHandler;

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
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.orange,
              textStyle: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300,
              ),
            ),
            onPressed: restHandler,
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }
}
