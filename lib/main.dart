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
                Color.fromARGB(255, 33, 9, 75),
                Color.fromARGB(255, 157, 124, 214),
              ],
            ),
          ),
          child: const StratScreen(),
        ),
      ),
    ),
  );
}
