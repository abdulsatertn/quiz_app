import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app/start_screen.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromARGB(255, 34, 12, 73),
                    Color.fromARGB(255, 81, 37, 153),
                  ]),
            ),
            child: const StartScreen()),
      ),
    );
  }
}
