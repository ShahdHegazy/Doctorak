import 'package:flutter/material.dart';
import 'package:task/question_model.dart';
import 'package:task/question_model_view.dart';
import 'package:task/result.dart';
import 'package:task/result_metod.dart';

import 'answer_model_view.dart';

// ignore: camel_case_types
class home extends StatefulWidget {
  home({super.key});

  @override
  State<home> createState() => _homeState();
}

List<Question> questions = getQuestions();
int currentQuestionIndex = 0;

List<String> result1 = [];
List<String> result2 = [];
var map = {};
int thevalue = 0;
// ignore: prefer_typing_uninitialized_variables
var thekey;

// ignore: camel_case_types
class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff022E58),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: Column(
            children: [
              const Text(
                "Expert system",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 44,
              ),
              questionsmodel(
                  currentQuestionIndex: currentQuestionIndex,
                  questions: questions),
              const SizedBox(
                height: 30,
              ),
              Image.asset(
                questions[currentQuestionIndex].image,
                height: 200,
              ),
              Expanded(
                  child:
                      answerview(currentQuestionIndex: currentQuestionIndex)),
              SizedBox(
                height: 48,
                child: TextButton(
                  onPressed: () {
                    if (currentQuestionIndex <= 22) {
                      for (var element in questions[currentQuestionIndex]
                          .answersList[answerIndex]
                          .disease) {
                        result1.add(element);
                      }
                      for (var element in result1) {
                        result2.add(element);
                      }
                      result1.clear();

                      currentQuestionIndex++;
                      setState(() {});
                    } else {
                      for (var x in result2) {
                        map[x] = !map.containsKey(x) ? (1) : (map[x] + 1);
                      }
                      map.forEach((k, v) {
                        if (v > thevalue) {
                          thevalue = v;
                          thekey = k;
                        }
                      });
                      List<String> a = result(thekey, thevalue);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => result_view(result,
                                  res: a[0], ress: a[1], image: a[2])));
                    }
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                    ),
                  ),
                  child: const Text("Next"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
