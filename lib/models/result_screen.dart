import 'package:flutter/material.dart';
import 'package:quizapp/data/questions.dart';
import 'package:quizapp/models/questions_summary.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.chosenAnswer, required this.restart});

  final List<String> chosenAnswer;
  final Function() restart;

  List<Map<String, Object>> getSummeryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < questions.length; i++) {
      summary.add({
        'question_intex': i,
        'question': questions[i].text,
        'correct_answer': questions[i].question[0],
        'user_answer': chosenAnswer[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummeryData();
    final totalQuestionNum = questions.length;
    final correctQuestionNum = summaryData.where((element) {
      return element['user_answer'] == element['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  fontSize: 15,
                  color: Colors.white,
                ),
                'Youer Answers $correctQuestionNum out of $totalQuestionNum Question Correctly'),
            const SizedBox(
              height: 30,
            ),
            QuestionSummary(summaryData: summaryData),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: () {
                restart();
              },
              style: TextButton.styleFrom(
                  foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                  textStyle: const TextStyle(fontSize: 20)),
              icon: const Icon(Icons.restart_alt),
              label: const Text('Restart'),
            )
          ],
        ),
      ),
    );
  }
}
