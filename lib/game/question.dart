import 'answer.dart';

class Question {
  final String question;
  final List<Answer> answers;
  Answer? selectedAnswer;

  Question(this.question, this.answers);
}