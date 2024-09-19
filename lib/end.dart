import 'package:flutter/material.dart';
import 'package:flutter_ogreniyorum/results_screen.dart';
import 'package:flutter_ogreniyorum/home.dart';

import 'package:google_fonts/google_fonts.dart';


class EndScreen extends StatelessWidget {
  final Color backgroundColor;
  final String title;
  final String imagePath;

  const EndScreen(this.backgroundColor, this.title, this.imagePath,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Image.asset(imagePath),
          const SizedBox(height: 20),
          Text(
            title,
            style: const TextStyle(
              fontSize: 20, // Adjust font size
              fontWeight: FontWeight.bold, // Font weight for bold effect
              color: Colors.white, // Text color
              letterSpacing: 2.0,
              decoration: TextDecoration.none, // Adds spacing between letters
              shadows: [
                Shadow(
                  offset: Offset(2.0, 2.0),
                  blurRadius: 3.0,
                  color: Colors.black54, // Shadow color
                ),
              ],
            ),
            textAlign: TextAlign.center, // Aligns the text to the center
          ),
          Container(margin: EdgeInsets.all(15),
           child: OutlinedButton(
            onPressed: () {
              resultPage(context);
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              overlayColor: Colors.white,
              textStyle: GoogleFonts.robotoMono(
                color: Colors.white,
                fontSize: 18
              )
            ),
            child: const Text('Be my guest'),
          ))
        ],
      ),
    );
  }
}

void resultPage(BuildContext context) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) =>  ResultsScreen(chosenAnswers: selectedAnswers,),
    ),
  );
}
