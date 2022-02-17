import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';
import 'package:quiz_app/answer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    // ignore: avoid_print
    print(_questionIndex);
  }

  int _questionIndex = 0;
  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        'question':
            'Grand Central Terminal, Park Avenue, New York is the world\'s?',
        'answers': [
          'largest railway station',
          'highest railway station',
          'longest railway station',
          'None of the above',
        ]
      },
      {
        'question': 'Entomology is the science that studies',
        'answers': [
          'Behavior of human beings',
          'Insects',
          'The origin and history of technical and scientific terms',
          'The formation of rocks',
        ]
      },
      {
        'question':
            'Eritrea, which became the 182nd member of the UN in 1993, is in the continent of?',
        'answers': [
          'Asia',
          'Africa',
          'Europe',
          'Australia',
        ]
      },
    ];
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.lime,
          title: const Center(
              child: Text(
            "Quiz App",
          ))),
      body: Stack(
        children: [
          Column(
            children: [
              Question(questions[_questionIndex]['question'] as String),
              ...(questions[_questionIndex]['answers'] as List<String>)
                  .map((answer) {
                return Answer(
                  handler: _answerQuestion,
                  answer: answer,
                );
              }).toList()
            ],
          )
        ],
      ),
    );
  }
}
