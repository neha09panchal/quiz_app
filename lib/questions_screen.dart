import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

import 'data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion() {
    setState(() {
      currentQuestionIndex = currentQuestionIndex + 1;
      print('*** setstate $currentQuestionIndex');
    });
  }

  @override
  Widget build(BuildContext context) {
    var currentQuestion = questions[1];
    print('*** index ${questions[currentQuestionIndex].toString()}');

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.questionText,
              style: const TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30.0,
            ),
            ...currentQuestion.getShuffledAnswer().map((answer) {
              return AnswerButton(
                answerText: answer,
                onTap: () => answerQuestion(),
              );
            }),
          ],
        ),
      ),
    );
  }
}