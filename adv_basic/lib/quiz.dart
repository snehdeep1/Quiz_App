import 'package:adv_basic/questions_Screens.dart';
import 'package:flutter/material.dart';
import 'package:adv_basic/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget activeScreen = StartScreen(switchScreen);

  SwitchScreen() {
    setState(() {
      activeScreen = QuestionsScreens();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 58, 9, 143),
                const Color.fromARGB(255, 129, 59, 250),
              ],
              begin: AlignmentGeometry.topLeft,
              end: AlignmentGeometry.bottomRight,
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
