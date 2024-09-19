import 'package:flutter/material.dart';
import 'package:flutter_ogreniyorum/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  HomePage(this.background, this.text, this.image, {super.key});
  var background;
  var image;
  String text;

  @override
  Widget build(context) {
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
                  // Provide the onSelectAnswer function when navigating
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Questions(
                        onSelectAnswer: (String answer) {
                          // Implement what you want to do with the selected answer
                          print("Selected Answer: $answer");
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
                icon: const Icon(Icons.quiz),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void run() {}
