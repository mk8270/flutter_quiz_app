import 'package:flutter/material.dart';

class StratScreen extends StatelessWidget {
  const StratScreen(this.startScreen, {super.key});
  final void Function() startScreen;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(127, 255, 255, 255),
          ),
          const SizedBox(height: 80),
          const Text(
            'Flutter Quiz App!',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            icon: const Icon(Icons.arrow_right_alt),
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 255, 255, 255),
            ),
            onPressed: startScreen,
            label: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
