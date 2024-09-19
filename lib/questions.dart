import 'package:flutter/material.dart';
import 'package:flutter_ogreniyorum/end.dart';
import 'package:flutter_ogreniyorum/answer_button.dart';
import 'package:flutter_ogreniyorum/data/questions_list.dart';
import 'package:google_fonts/google_fonts.dart';

class Questions extends StatefulWidget {
  const Questions({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<Questions> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<Questions> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });

    // Navigate to the end screen once all questions are answered
  }

  @override
  Widget build(context) {
    if (currentQuestionIndex == 5) {
      setState(() {
         nextpage(context);
      });
    }
    final currentQuestion = questions[currentQuestionIndex];

    return Container(
      color: const Color.fromARGB(255, 21, 176, 4),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(
                right: 30.0,
                left: 30.0,
                bottom: 30.0,
              ),
              child: Text(
                currentQuestion.text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  decoration: TextDecoration.none,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(answer, () {
                answerQuestion(answer);
              });
            }),
          ],
        ),
      ),
    );
  }
}

void nextpage(BuildContext context) {
     Future.microtask(() => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const EndScreen(
                Colors.black,
                'Ready to see your result?',
                'assets/images/ashraf.png',
              ),
            ),
          ));
}
