// ignore_for_file: empty_catches, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:task/question_model.dart';
import 'homeview.dart';

int answerIndex = 0;

// ignore: camel_case_types, must_be_immutable
class answerview extends StatefulWidget {
  answerview({
    super.key,
    required this.currentQuestionIndex,
  });
  int currentQuestionIndex;

  @override
  State<answerview> createState() => _answerviewState();
}

// ignore: camel_case_types
class _answerviewState extends State<answerview> {
  final List<Question> questions = getQuestions();

  int currentQuestionIndexx = 0;

  late int currentanswerIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: questions[widget.currentQuestionIndex].answersList.length,
      itemBuilder: (context, index) {
        if (widget.currentQuestionIndex == currentQuestionIndexx) {
          currentanswerIndex++;
        } else {
          currentQuestionIndexx = widget.currentQuestionIndex;
          currentanswerIndex = 0;
          currentanswerIndex++;
        }

        return Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SizedBox(
              height: 48,
              child: TextButton(
                onPressed: () {
                  try {
                    questions[currentQuestionIndex]
                        .answersList[(index + 1)]
                        .isCorrect = false;
                    // ignore: empty_catches
                  } catch (a) {}
                  try {
                    questions[currentQuestionIndex]
                        .answersList[(index + 2)]
                        .isCorrect = false;
                    // ignore: empty_catches
                  } catch (a) {}
                  try {
                    questions[currentQuestionIndex]
                        .answersList[(index - 1)]
                        .isCorrect = false;
                  } catch (a) {}
                  try {
                    questions[currentQuestionIndex]
                        .answersList[(index - 2)]
                        .isCorrect = false;
                  } catch (a) {}
                  questions[currentQuestionIndex]
                      .answersList[(index)]
                      .isCorrect = true;
                  answerIndex = index;

                  setState(() {});
                },
                style: TextButton.styleFrom(
                  backgroundColor: questions[currentQuestionIndex]
                          .answersList[(index)]
                          .isCorrect
                      ? const Color.fromARGB(255, 98, 226, 103)
                      : Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      12,
                    ),
                  ),
                ),
                child: Text(
                  questions[currentQuestionIndex]
                      .answersList[(index)]
                      .answerText,
                ),
              ),
            ));
      },
    );
  }
}
