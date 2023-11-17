class QuizQuestion {
  const QuizQuestion(this.text, this.question);

  final String text;
  final List<String> question;

  List<String> getShuffiledAnswer() {
    final shuffiled = List.of(question);
    shuffiled.shuffle();
    return shuffiled;
  }
}
