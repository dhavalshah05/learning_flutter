import 'package:flutter/material.dart';

class QuestionText extends StatelessWidget {
  final String question;

  const QuestionText(this.question, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      question,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 25,
      ),
    );
  }
}
