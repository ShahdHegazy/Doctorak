import 'package:flutter/material.dart';

import 'homeview.dart';

// ignore: camel_case_types
class answerbuttom extends StatefulWidget {
  const answerbuttom({super.key, required this.currentanswerIndex});
  final int currentanswerIndex;

  @override
  State<answerbuttom> createState() => _answerbuttomState();
}

// ignore: camel_case_types
class _answerbuttomState extends State<answerbuttom> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SizedBox(
          height: 48,
          child: TextButton(
            onPressed: () {
              
              try {
                questions[currentQuestionIndex]
                        .answersList[(widget.currentanswerIndex + 1)]
                        .isCorrect =
                    false;
              // ignore: empty_catches
              } catch (a) {}
              try {
                questions[currentQuestionIndex]
                        .answersList[(widget.currentanswerIndex + 2)]
                        .isCorrect =
                   false;
              // ignore: empty_catches
              } catch (a) {}
              try {
                questions[currentQuestionIndex]
                        .answersList[(widget.currentanswerIndex - 1)]
                        .isCorrect =
                   false;
              // ignore: empty_catches
              } catch (a) {}
              try {
                questions[currentQuestionIndex]
                        .answersList[(widget.currentanswerIndex - 2)]
                        .isCorrect =
                 false;
              // ignore: empty_catches
              } catch (a) {}
              questions[currentQuestionIndex]
                      .answersList[(widget.currentanswerIndex)]
                      .isCorrect =
                  true;

              // ignore: avoid_print
            
              setState(() {});
            },
            style: TextButton.styleFrom(
              backgroundColor: questions[currentQuestionIndex]
                      .answersList[(widget.currentanswerIndex)]
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
                  .answersList[(widget.currentanswerIndex)]
                  .answerText,
            ),
          ),
        ));
  }
}



// ignore: camel_case_types
class newcontainar extends StatelessWidget {
  const newcontainar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: 
    SafeArea(child: 
    Center(
      child: Container(color: Colors.black45,height: 30,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(color: Colors.blue,
            child: 
            Row(mainAxisAlignment:MainAxisAlignment.spaceBetween ,
              children: const [
                Text("yes"),
                Icon(Icons.radio_button_off),
              ],
            ),
          ),
        ),
      ),
    )),);
  }
}