import 'package:flutter/material.dart';

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
                onPressed: run,
                style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white,
                    overlayColor: Colors.white,
                    textStyle: const TextStyle(
                      fontSize: 11.0,
                    )),
                
                label: const Text(
                  'Sign in',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

void run() {}
