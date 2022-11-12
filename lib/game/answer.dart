class Answer {
  final String text;
  final bool isCorrect;

  AnswerState state = AnswerState.notSelected;

  Answer(this.text, this.isCorrect);
}

enum AnswerState {
  notSelected,
  correct,
  incorrect
}