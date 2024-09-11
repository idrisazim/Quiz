import 'package:flutter/material.dart';
import 'package:flutter_ogreniyorum/answer_button.dart';
import 'package:flutter_ogreniyorum/data/questions_list.dart';

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
    final currentQuestion = questions[0];

    return Container(
        color: const Color.fromARGB(255, 21, 176, 4),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                  margin: const EdgeInsets.only(
                      right: 30.0, left: 30.0, bottom: 30.0),
                  child: Text(
                    currentQuestion.text,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      decoration: TextDecoration.none,
                    ),
                    textAlign: TextAlign.center, // Centering the text
                  )),
              ...currentQuestion.answers.map((answer) {
                // The 3 dot here converts to list to individual items
                return AnswerButton(answer, () {});
              }),
            ],
          ),
        ));
  }
}
