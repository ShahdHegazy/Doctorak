import 'package:flutter/material.dart';
import 'package:task/question_model.dart';

// ignore: camel_case_types, must_be_immutable
class questionsmodel extends StatelessWidget {
  questionsmodel(
      {super.key, required this.questions, required this.currentQuestionIndex});
  List<Question> questions = getQuestions();
  int currentQuestionIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Question ${currentQuestionIndex + 1}/${questions.length.toString()}",
          style: const TextStyle(
            color: Color.fromARGB(110, 205, 230, 255),
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Divider(),
        Text(
          questions[currentQuestionIndex].questionText,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
