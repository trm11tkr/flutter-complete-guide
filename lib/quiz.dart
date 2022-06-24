import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  const Quiz({Key? key, required this.questions, required this.answerQuestion, required this.questionIndex})
      : super(key: key);

  final List<Map<String, dynamic>> questions;
  final int questionIndex;
  final Function answerQuestion;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questionText: questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answers'] as List<Map<String, dynamic>>).map(
          (answer) {
            return Answer(selectHandler: () => answerQuestion(answer['score']), answerText: answer['text']);
          },
        ).toList(),
      ],
    );
  }
}
