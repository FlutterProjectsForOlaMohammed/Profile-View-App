class QuestionModel {
  final String question;
  final String correctAnswer;
  final bool userAnswer;

  QuestionModel(
      {required this.question,
      required this.correctAnswer,
      required this.userAnswer});
}
