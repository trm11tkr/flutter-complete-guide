import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
  final questions = const <Map<String, dynamic>>[
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White', 'Yellow'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Cat', 'Rabbit', 'Snake', 'Elephant', 'Lion']
    },
    {
      'questionText': 'What\'s your favorite sports?',
      'answers': ['Soccer', 'Baseball', 'Badminton', 'Tennis', 'Hockey']
    },
  ];

  void _answerQuestion() {
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
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(
                      questionText: questions[_questionIndex]['questionText']),
                  ...(questions[_questionIndex]['answers']).map(
                    (answer) {
                      return Answer(
                          selectHandler: _answerQuestion, answerText: answer);
                    },
                  ).toList(),
                ],
              )
            : const Center(
                child: Text('You did it!'),
              ),
      ),
    );
  }
}
