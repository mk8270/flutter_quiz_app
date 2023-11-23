import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    Color intexColors(x) {
      return x['correct_answer'] == x['user_answer']
          ? Colors.green
          : Colors.red;
    }

    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((e) {
            return Row(
              children: [
                Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: intexColors(e),
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Center(
                        child: Text(
                            ((e['question_intex'] as int) + 1).toString()))),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Text(
                          e['question'] as String,
                          style: const TextStyle(
                              fontSize: 14, color: Colors.white),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(e['user_answer'] as String),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          e['correct_answer'] as String,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 8, 235, 15)),
                        ),
                        const SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
