import 'package:flutter/material.dart';

import 'answer.dart';
import 'game_result.dart';
import 'question.dart';
import 'question_card.dart';

class QuestionGame extends StatefulWidget {
  const QuestionGame({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _QuestionGameState();
  }
}

class _QuestionGameState extends State<QuestionGame> {
  final List<Question> questions = [
    Question(
        "The name of the Laccadive, Minicoy and Amindivi islands was changed to Lakshadweep by an Act of Parliament in",
        [
          Answer("1970", false),
          Answer("1971", false),
          Answer("1972", false),
          Answer("1973", true),
        ]),
    Question("The members of the Rajya Sabha are elected by", [
      Answer("the people", false),
      Answer("Lok Sabha", false),
      Answer("elected members of the legislative assembly", true),
      Answer("elected members of the legislative council", false),
    ]),
    Question("The power to decide an election petition is vested in the", [
      Answer("Parliament", false),
      Answer("Supreme Court", false),
      Answer("High courts", true),
      Answer("Election Commission", false),
    ])
  ];

  int questionIndex = 0;
  bool isNextButtonVisible = false;
  bool showResult = false;

  void showNextQuestion() {
    if (questionIndex < questions.length - 1) {
      setState(() {
        questionIndex += 1;
        isNextButtonVisible = false;
      });
    } else {
      setState(() {
        showResult = true;
      });
    }
  }

  String get nextButtonText {
    return questionIndex == questions.length - 1
        ? "Show Result"
        : "Next Question";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          width: double.infinity,
          margin: const EdgeInsets.all(20),
          child: showResult
              ? const GameResult()
              : Column(
            children: [
              QuestionCard(questions[questionIndex], () {
                setState(() {
                  isNextButtonVisible = true;
                });
              }),
              isNextButtonVisible
                  ? TextButton(
                onPressed: showNextQuestion,
                child: Text(nextButtonText),
              )
                  : const SizedBox.shrink()
            ],
          ),
        ),
      ),
    );
  }
}