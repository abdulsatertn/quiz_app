import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestion = 0;

  answerQuestion() {
    setState(() {
      currentQuestion++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currintQuestion = questions[currentQuestion];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textAlign: TextAlign.center,
              currintQuestion.text,
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 30,
            ),
            ...currintQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(onTap: answerQuestion, answerText: answer);
            }),
          ],
        ),
      ),
    );
  }
}
