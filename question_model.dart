class Question {
  final String questionText;
  final List<Answer> answersList;
  final String image;
  final bool current = true;

  Question(this.questionText, this.answersList, this.image);
}

class Answer {
  final String answerText;
  late int isCorrectint;
  late bool isCorrect;
  late List<String> disease;

  Answer(this.answerText, this.isCorrectint, this.isCorrect, this.disease);
}

List<Question> getQuestions() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
      "Can the player use the injured muscle and continue playing?",
      [
        Answer(
          "Yes",
          0,
          false,
          ["Bruises", "Muscle contraction"],
        ),
        Answer(
          "No",
          1,
          false,
          ["Partial rupture", "Total rupture"],
        ),
        Answer("Relatively poor muscle strength", 2, false,
            ["Tightening of the muscles"]),
      ],
      "assets/images/question1.png"));

  list.add(Question(
      "Is there bleeding / oozing blood?",
      [
        Answer(
          "Minor bleeding",
          0,
          false,
          ["Bruises"],
        ),
        Answer("severe bleeding", 2, false,
            ["Tightening of the muscles", "Partial rupture", "Total rupture"]),
      ],
      "assets/images/question2.png"));

  list.add(Question(
      "Do you feel pain in the form?",
      [
        Answer(
          "Knife strike",
          0,
          false,
          ["Partial rupture"],
        ),
        Answer(
          "Tingling",
          1,
          false,
          ["Bruises", "Muscle contraction"],
        ),
        Answer("Else", 2, false, []),
      ],
      "assets/images/question3.png"));

  list.add(Question(
      "Is there a continuous contraction in the affected muscle?",
      [
        Answer(
          "Severe contracture",
          0,
          false,
          [],
        ),
        Answer(
          "Simple contraction",
          1,
          false,
          ["Muscle contraction"],
        ),
      ],
      "assets/images/question4.png"));

  list.add(Question(
      "Do you feel stiff when stressed?",
      [
        Answer(
          "Yes",
          0,
          false,
          ["inflammation", "stress"],
        ),
        Answer(
          "NO",
          1,
          false,
          [],
        ),
      ],
      "assets/images/question5.png"));

  list.add(Question(
      "Do you feel weak in the muscle and lack of flexibility?",
      [
        Answer(
          "Yes",
          0,
          false,
          ["inflammation", "stress"],
        ),
        Answer(
          "NO",
          1,
          false,
          [],
        ),
      ],
      "assets/images/question6.png"));

  list.add(Question(
      "Do you notice an increase in symptoms when exposed to a cold?",
      [
        Answer(
          "Yes",
          0,
          false,
          ["inflammation"],
        ),
        Answer(
          "NO",
          1,
          false,
          [],
        ),
      ],
      "assets/images/question7.png"));

  list.add(Question(
      "Do you feel pain when the doctor presses on the affected area, the bone with the muscles that sprout from it?",
      [
        Answer(
          "Yes",
          0,
          false,
          ["inflammation"],
        ),
        Answer(
          "NO",
          1,
          false,
          [],
        ),
      ],
      "assets/images/question8.png"));

  list.add(Question(
      "Do you feel very tired and exhausted, and the level of physical abilities decline?",
      [
        Answer(
          "Yes",
          0,
          false,
          ["stress"],
        ),
        Answer(
          "NO",
          1,
          false,
          [],
        ),
      ],
      "assets/images/question9.png"));

  list.add(Question(
      "Do you notice a gradual increase in swelling during the first 24 hours after the injury?",
      [
        Answer(
          "Yes",
          0,
          false,
          ["Partial rupture"],
        ),
        Answer(
          "To some extent",
          1,
          false,
          ["Bruises", "Muscle contraction"],
        ),
        Answer("NO", 2, false, []),
      ],
      "assets/images/question10.png"));

  list.add(Question(
      "Does the skin color change?",
      [
        Answer(
          "Yes",
          0,
          false,
          ["Bruises"],
        ),
        Answer(
          "To some extent",
          1,
          false,
          ["Tightening of the muscles", "Partial rupture", "Total rupture"],
        ),
        Answer(
            "NO", 2, false, ["Muscle contraction", "inflammation", "stress"]),
      ],
      "assets/images/question11.png"));

  list.add(Question(
      "Is there a tumor?",
      [
        Answer(
          "Yes",
          0,
          false,
          ["Bruises"],
        ),
        Answer(
          "To some extent",
          1,
          false,
          [
            "inflammation",
            "Tightening of the muscles",
            "Partial rupture",
            "Total rupture"
          ],
        ),
        Answer("NO", 2, false, ["Muscle contraction", "stress"]),
      ],
      "assets/images/question12.png"));

  list.add(Question(
      "Is the blood gathering clear around the site of the injury, especially after 48 hours have passed?",
      [
        Answer(
          "Yes",
          0,
          false,
          ["Bruises", "Partial rupture"],
        ),
        Answer(
          "To some extent",
          1,
          false,
          [],
        ),
        Answer("NO", 2, false, []),
      ],
      "assets/images/question13.png"));

  list.add(Question(
      "Is there a gap or depression in the place of injury?",
      [
        Answer(
          "Yes",
          0,
          false,
          ["Total rupture"],
        ),
        Answer(
          "Simple",
          1,
          false,
          ["Partial rupture"],
        ),
        Answer("NO", 2, false, []),
      ],
      "assets/images/question14.png"));

  list.add(Question(
      "Does the temperature change locally?",
      [
        Answer(
          "Yes",
          0,
          false,
          ["Bruises", "Partial rupture", "Total rupture"],
        ),
        Answer(
          "NO",
          1,
          false,
          [],
        ),
      ],
      "assets/images/question15.png"));

  list.add(Question(
      "Can the continuous contraction be seen and touched by hand?",
      [
        Answer(
          "Yes",
          0,
          false,
          ["Muscle contraction"],
        ),
        Answer(
          "NO",
          1,
          false,
          [],
        ),
      ],
      "assets/images/question16.png"));

  list.add(Question(
      "Is there a low level of neuromuscular compatibility?",
      [
        Answer(
          "Yes",
          0,
          false,
          ["stress"],
        ),
        Answer(
          "NO",
          1,
          false,
          [],
        ),
      ],
      "assets/images/question17.png"));

  list.add(Question(
      "Can you move the injured muscle?",
      [
        Answer(
          "Yes",
          0,
          false,
          [],
        ),
        Answer(
          "Simple movement",
          1,
          false,
          ["Bruises", "inflammation", "Tightening of the muscles"],
        ),
        Answer(
            "NO", 2, false, ["Muscle contraction", "stress", "Total rupture"]),
      ],
      "assets/images/question18.png"));

  list.add(Question(
      "How does the injury occur as a result of external shock or external violence, such as colliding with a solid object or the player’s body?",
      [
        Answer(
          "Yes",
          0,
          false,
          ["Bruises"],
        ),
        Answer(
          "NO",
          1,
          false,
          [],
        ),
      ],
      "assets/images/question19.png"));

  list.add(Question(
      "The way the injury occurs is the result of overstretching some of the fibers in the muscle",
      [
        Answer(
          "Yes",
          0,
          false,
          ["Tightening of the muscles", "Partial rupture"],
        ),
        Answer(
          "NO",
          1,
          false,
          [],
        ),
      ],
      "assets/images/question20.png"));

  list.add(Question(
      "How does the injury occur as a result of the sudden violent muscle contraction to resist an external force at the moment of its occurrence when the muscle is not prepared for that?",
      [
        Answer(
          "Yes",
          0,
          false,
          ["Muscle contraction", "Partial rupture", "Total rupture"],
        ),
        Answer(
          "NO",
          1,
          false,
          [],
        )
      ],
      "assets/images/question21.png"));

  list.add(Question(
      "The way the injury occurred as a result of an involuntary contraction of the muscle so that it cannot be relaxed?",
      [
        Answer(
          "Yes",
          0,
          false,
          ["Muscle contraction"],
        ),
        Answer(
          "NO",
          1,
          false,
          [],
        ),
      ],
      "assets/images/question22.png"));

  list.add(Question(
      "How does the injury occur as a result of chronic stress and tension on the small fibers that connect the muscle to the bone area associated with it?",
      [
        Answer(
          "Yes",
          0,
          false,
          ["inflammation"],
        ),
        Answer(
          "NO",
          1,
          false,
          [],
        ),
      ],
      "assets/images/question23.png.jpg"));

  list.add(Question(
      "How did the injury occur as a result of a decrease in the player's efficiency and ability, with severe pain when performing muscular effort?",
      [
        Answer(
          "Yes",
          0,
          false,
          ["stress"],
        ),
        Answer(
          "NO",
          1,
          false,
          [],
        ),
      ],
      "assets/images/question24.png.jpg"));

  return list;
}
