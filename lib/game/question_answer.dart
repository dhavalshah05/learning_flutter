import 'package:flutter/material.dart';

import 'answer.dart';

class QuestionAnswer extends StatelessWidget {
  final Answer answer;
  final bool enabled;
  final Function(Answer) onClick;

  const QuestionAnswer(this.answer, this.enabled, this.onClick, {Key? key})
      : super(key: key);

  Color get textColor {
    if (answer.state == AnswerState.correct || answer.state == AnswerState.incorrect) {
      return Colors.white;
    } else {
      return Colors.blueAccent;
    }
  }

  Color get borderColor {
    if (answer.state == AnswerState.correct) {
      return Colors.green;
    } else if (answer.state == AnswerState.incorrect) {
      return Colors.red;
    } else {
      return Colors.blueAccent;
    }
  }

  Color get backgroundColor {
    if (answer.state == AnswerState.correct) {
      return Colors.green;
    } else if (answer.state == AnswerState.incorrect) {
      return Colors.red;
    } else {
      return Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: enabled ? () {
          onClick(answer);
        } : null,
        child: Text(
          answer.text,
          style: TextStyle(color: textColor),
        ),
        style: OutlinedButton.styleFrom(
          primary: textColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          side: BorderSide(color: borderColor),
          backgroundColor: backgroundColor
        ),
      ),
    );
  }
}
