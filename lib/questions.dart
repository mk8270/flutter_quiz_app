import 'package:flutter/material.dart';
import 'package:quizapp/answer_button.dart';
import 'package:quizapp/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelecetAnsewrs});
  final void Function(String answers) onSelecetAnsewrs;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuiestionIndex = 0;

  void onTapAnswers(selectAnswer) {
    widget.onSelecetAnsewrs(selectAnswer);
    setState(() {
      currentQuiestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final question = questions[currentQuiestionIndex];
    return Container(
      margin: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Text(
              question.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 192, 220, 228),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            width: double.infinity,
            height: 30,
          ),
          ...question.getShuffiledAnswer().map(
                (e) => AnswerButton(
                  answers: e,
                  onTap: () {
                    onTapAnswers(e);
                  },
                ),
              ),
        ],
      ),
    );
  }
}
