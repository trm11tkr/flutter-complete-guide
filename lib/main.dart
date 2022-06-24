import 'package:flutter/material.dart';

import './result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const <Map<String, dynamic>>[
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 4},
        {'text': 'White', 'score': 1},
        {'text': 'Yellow', 'score': 20},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Cat', 'score': 4},
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Snake', 'score': 1},
        {'text': 'Elephant', 'score': 2},
        {'text': 'Lion', 'score': 2},
      ]
    },
    {
      'questionText': 'What\'s your favorite sports?',
      'answers': [
        {'text': 'Soccer', 'score': 7},
        {'text': 'Baseball', 'score': 5},
        {'text': 'Badminton', 'score': 20},
        {'text': 'Tennis', 'score': 7},
        {'text': 'Hockey', 'score': 6},
      ]
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(resultScore: _totalScore),
      ),
    );
  }
}
