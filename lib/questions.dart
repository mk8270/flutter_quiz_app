import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('data'),
        const SizedBox(
          width: double.infinity,
          height: 30,
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text("Answer 1"),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text("Answer 1"),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text("Answer 1"),
        ),
      ],
    );
  }
}
