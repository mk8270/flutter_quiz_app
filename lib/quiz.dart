import 'package:flutter/material.dart';
import 'package:quizapp/questions.dart';
import 'package:quizapp/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  final List<String> selectAnswer = [];
  var activeScreen = 'StartSceen';

  void switchScreen() {
    setState(() {
      activeScreen = 'QuestSceen';
    });
  }

  void choseAnswes(String answers) {
    selectAnswer.add(answers);
  }

  @override
  Widget build(BuildContext context) {
    //
    Widget screenWidget = StratScreen(switchScreen);
    if (activeScreen == 'QuestSceen') {
      screenWidget = QuestionsScreen(
        onSelecetAnsewrs: choseAnswes,
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(172, 48, 10, 124),
                Color.fromRGBO(126, 102, 230, 1)
              ],
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
