import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;
  const Question(this.question, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      color: Colors.white,
      width: double.infinity,
      child: Text(question,style: const TextStyle(color: Colors.black,fontSize:24 ),textAlign: TextAlign.center,)
    );
  }
}