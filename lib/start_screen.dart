import 'package:flutter/material.dart';

class StratScreen extends StatelessWidget {
  const StratScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
          ),
          const SizedBox(height: 80),
          const Text(
            'Flutter Quiz App!',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            icon: const Icon(Icons.arrow_right_alt),
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 255, 255, 255),
            ),
            onPressed: () {},
            label: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
