import 'package:flutter/material.dart';
import 'package:saep_reakcje_organiczne/components/quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizBrain quizBrain = QuizBrain();

class QuizScreen extends StatefulWidget {
  static const String id = 'quiz_screen';
  QuizScreen({super.key});

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class Score {
  static int score = 0;
}

class _QuizScreenState extends State<QuizScreen> {
  List<Icon> scoreKeeper = [];

  void checkAnswer(String userPickedAnswer) {
    String correctAnswer = quizBrain.getQuestionAnswer();

    setState(
      () {
        if (quizBrain.isFinished() == true) {
          Alert(
            context: context,
            type: AlertType.warning,
            title: "Koniec!",
            desc: "Dotarłeś do końca quizu",
            buttons: [
              DialogButton(
                onPressed: () => Navigator.pop(context),
                color: const Color.fromRGBO(0, 179, 134, 1.0),
                child: const Text(
                  "ZAKOŃCZ",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ],
          ).show();
          quizBrain.reset();
          scoreKeeper = [];
          Score.score = 0;
        } else {
          if (userPickedAnswer == correctAnswer) {
            scoreKeeper.add(const Icon(
              Icons.check,
              color: Colors.green,
            ));
            Score.score++;
          } else {
            scoreKeeper.add(const Icon(
              Icons.close,
              color: Colors.red,
            ));
          }
          quizBrain.nextQuestion();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 4,
            child: Padding(
              padding: EdgeInsets.all(5.0),
              child: Center(
                child: Text(
                  quizBrain.getQuestionText(),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25.0, color: Colors.green),
                ),
              ),
            ),
          ),
          answerButton('A', quizBrain.getAnswerA()),
          answerButton('B', quizBrain.getAnswerB()),
          answerButton('C', quizBrain.getAnswerC()),
          answerButton('D', quizBrain.getAnswerD()),
          Row(
            children: scoreKeeper,
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(children: [
              Text(
                'SUMA PUNKTÓW: ' + Score.score.toString(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.green,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ],
      ),
    );
  }

  Expanded answerButton(String letter, String answer) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: SizedBox(
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.lightGreen,
              elevation: 5.0,
            ),
            onPressed: () {
              checkAnswer(letter);
            },
            child: Text(
              answer,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
