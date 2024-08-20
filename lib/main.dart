import 'package:flutter/material.dart';
import 'package:flutter_ogreniyorum/home.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: HomePage(Color.fromARGB(255, 21, 176, 4), 'VaciBuddy',
            'assets/images/quizlogo.png'),
      ),
    ),
  );
}
