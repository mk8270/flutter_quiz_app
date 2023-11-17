import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key, required this.answers, required this.onTap});

  final String answers;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          backgroundColor: const Color.fromARGB(255, 52, 16, 112),
          foregroundColor: Colors.white),
      onPressed: onTap,
      child: Text(answers),
    );
  }
}
