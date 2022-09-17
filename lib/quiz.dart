import 'package:buthcering/question.dart';
import 'package:flutter/cupertino.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function(int score) doSomething;
  final int qindex;

  Quiz(@required this.questions, @required this.doSomething,
      @required this.qindex);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Question(questions[qindex]['questionText'] as String),
        ...(questions[qindex]['answers'] as List<Map<String, dynamic>>)
            .map((answer) {
          return Answer(() => doSomething(answer['score']), answer['text']);
        }).toList()
      ],
    ));
  }
}
