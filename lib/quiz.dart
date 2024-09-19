import 'package:flutter/material.dart';
import 'package:flutter_ogreniyorum/home.dart';


class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: HomePage(
          const Color.fromARGB(255, 21, 176, 4),
          'How well do you know IDI?',
          'assets/images/quizlogo.png',
        ),
      ),
    );
  }
}
