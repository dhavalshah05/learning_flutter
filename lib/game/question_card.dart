import 'package:flutter/cupertino.dart';
import 'package:learning_flutter/game/question.dart';

import 'answer.dart';
import 'question_answer.dart';
import 'question_text.dart';

class QuestionCard extends StatefulWidget {
  final Question question;
  final Function onAnswerSelect;

  const QuestionCard(this.question, this.onAnswerSelect, {Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _QuestionCardState();
  }
}

class _QuestionCardState extends State<QuestionCard> {

  bool get enabled {
    return widget.question.selectedAnswer == null;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        QuestionText(widget.question.question),
        const SizedBox(height: 20),
        ...getOptions(widget.question.answers),
      ],
    );
  }

  List<Widget> getOptions(List<Answer> answers) {
    List<Widget> results = [];

    for (Answer answer in answers) {
      results.add(
        QuestionAnswer(answer, enabled, (selectedAnswer) {
          widget.question.selectedAnswer = selectedAnswer;
          widget.onAnswerSelect();

          if (selectedAnswer.isCorrect) {
            setState(() {
              answer.state = AnswerState.correct;
            });
          } else {
            setState(() {
              answer.state = AnswerState.incorrect;
            });
          }
        }),
      );
    }

    return results;
  }
}
