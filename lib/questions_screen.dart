import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    final currintQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currintQuestion.text,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(
            onTap: () {},
            answerText: currintQuestion.answers[0],
          ),
          AnswerButton(
            onTap: () {},
            answerText: currintQuestion.answers[1],
          ),
          AnswerButton(
            onTap: () {},
            answerText: currintQuestion.answers[2],
          ),
          AnswerButton(
            onTap: () {},
            answerText: currintQuestion.answers[3],
          ),
        ],
      ),
    );
  }
}
