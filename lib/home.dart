import 'package:flutter/material.dart';
import 'package:flutter_ogreniyorum/data/questions_list.dart';
import 'package:flutter_ogreniyorum/questions.dart';
import 'package:flutter_ogreniyorum/end.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  HomePage(this.background, this.text, this.image, {super.key});

  final Color background;
  final String image;
  final String text;

  List<String> selectedAnswers = [];

  void chooseAnswer(String answer, BuildContext context) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      nextPage(context); 
    }
  }
  void nextPage(BuildContext context) {
    selectedAnswers = [];
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => const EndScreen(
                Color.fromARGB(255, 21, 176, 4),
                'Ready to see your result?',
                'assets/images/ashraf.png',
              )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: background),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(image, width: 300),
            const SizedBox(height: 10),
            Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 25.0),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: OutlinedButton.icon(
                onPressed: () {
                  // Navigate to the Questions screen and pass the onSelectAnswer callback
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Questions(
                        onSelectAnswer: (String answer) {
                          // Pass context and call chooseAnswer
                          chooseAnswer(answer, context);
                        },
                      ),
                    ),
                  );
                },
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  overlayColor: Colors.white,
                  textStyle: const TextStyle(
                    fontSize: 11.0,
                  ),
                ),
                label: Text(
                  'Let\'s find out!',
                  style: GoogleFonts.robotoMono(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void run() {}
