import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String,Object >> questions;
  final int index;
  final VoidCallback handler;
  const Quiz({Key? key, required this.questions,required this.index, required this.handler}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[index]['question'] as String),
        ...(questions[index]['answers'] as List<String>).map((answer) {
          return Answer(
            handler: handler,
            answer: answer,
          );
        }).toList()
      ],
    );
  }
}
