import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _questionIndex = 0;
  int score = 0;
  final questions = const [
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

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }

  void _restart() {
    setState(() {
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.lime,
          title: const Center(
              child: Text(
            "Quiz App",
          ))),
      body: _questionIndex < questions.length
          ? Stack(
              children: [
                Quiz(
                    questions: questions,
                    index: _questionIndex,
                    handler: _answerQuestion)
              ],
            )
          : Center(
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "You did it !",
                  style: TextStyle(fontSize: 32),
                  textAlign: TextAlign.center,
                ),
                ElevatedButton(
                    onPressed: _restart, child: const Text("Restart",style: TextStyle(fontSize: 24)),)
              ],
            )),
    );
  }
}
