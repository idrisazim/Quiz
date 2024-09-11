import 'package:flutter/material.dart';
import 'package:flutter_ogreniyorum/answer_button.dart';

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
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('The question...', style: TextStyle(color: Colors.white, fontSize: 30.0, decoration: TextDecoration.none)),
          const SizedBox(height: 30),
          Answer('Answer Text...', (){}),

        ],
      ),
    );
  }
}
