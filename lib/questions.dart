import 'package:flutter/material.dart';
import 'package:flutter_ogreniyorum/answer_button.dart';
import 'package:flutter_ogreniyorum/data/questions.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<Questions> {
  @override
  Widget build(context) {
    return Container(
      color: const Color.fromARGB(255, 21, 176, 4),
      child: SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('The question...', style: TextStyle(color: Colors.white, fontSize: 30.0, decoration: TextDecoration.none)),
          const SizedBox(height: 30),
          AnswerButton('Answer Text 1...', (){}),
          AnswerButton('Answer Text 2...', (){}),
          AnswerButton('Answer Text 3...', (){}),
          AnswerButton('Answer Text 4...', (){}),

        ],
      ),
    )
    );
  }
}
