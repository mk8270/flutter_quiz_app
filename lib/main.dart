import 'package:flutter/material.dart';
import 'package:quizapp/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(186, 116, 76, 196),
                Color.fromARGB(255, 77, 41, 240)
              ],
            ),
          ),
          child: const StratScreen(),
        ),
      ),
    ),
  );
}
