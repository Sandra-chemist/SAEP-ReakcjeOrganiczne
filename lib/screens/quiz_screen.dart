import 'package:flutter/material.dart';
import 'package:saep_reakcje_organiczne/components/quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:saep_reakcje_organiczne/constants.dart';
import 'package:saep_reakcje_organiczne/components/blue_app_bar.dart';
import 'package:saep_reakcje_organiczne/methods.dart';

QuizBrain quizBrain = QuizBrain();

class QuizScreen extends StatefulWidget {
  static const String id = 'quiz_screen';
  const QuizScreen({super.key});

  @override
  QuizScreenState createState() => QuizScreenState();
}

class QuizScreenState extends State<QuizScreen> {
  List<Icon> scoreKeeper = [];
  int score = 0;
  int points = quizBrain.getQuestionNumber();

  void checkAnswer(String userPickedAnswer) {
    String correctAnswer = quizBrain.getQuestionAnswer();

    setState(
      () {
        if (quizBrain.isFinished() == true) {
          if (userPickedAnswer == correctAnswer) {
            scoreKeeper.add(const Icon(
              Icons.check,
              color: Colors.white,
            ));
            score++;
          } else {
            scoreKeeper.add(const Icon(
              Icons.close,
              color: Colors.red,
            ));
          }
          Alert(
            style: const AlertStyle(
              descStyle: kAlertStyle,
              titleStyle: kAlertStyle,
            ),
            context: context,
            content: const Image(
              image: AssetImage('images/chemistry_cat.png'),
            ),
            //  type: AlertType.warning,
            title: "KONIEC!",
            desc: "Punkty: $score / $points",
            buttons: [
              DialogButton(
                onPressed: () => Navigator.pop(context),
                color: kBackgroundColor,
                child: const Text(
                  "ZAKOŃCZ",
                  style: kHintTextStyle,
                ),
              ),
            ],
          ).show();
          quizBrain.reset();
          scoreKeeper = [];
          score = 0;
        } else {
          if (userPickedAnswer == correctAnswer) {
            scoreKeeper.add(const Icon(
              Icons.check,
              color: Colors.white,
            ));
            score++;
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
      appBar: BlueAppBar(),
      backgroundColor: kBackgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Center(
                child: Text(
                  quizBrain.getQuestionText(),
                  textAlign: TextAlign.center,
                  style: kQuestionTextStyle,
                ),
              ),
            ),
          ),
          addAnswerButton('A', quizBrain.getAnswerA()),
          addAnswerButton('B', quizBrain.getAnswerB()),
          addAnswerButton('C', quizBrain.getAnswerC()),
          addAnswerButton('D', quizBrain.getAnswerD()),
          addSizeBox(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: scoreKeeper,
          ),
          addSizeBox(30),
        ],
      ),
    );
  }

  Expanded addAnswerButton(String letter, String answer) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          child: Material(
            color: const Color(0xFFbde0fe),
            borderRadius: BorderRadius.circular(25.0),
            elevation: 6.0,
            child: MaterialButton(
              onPressed: () {
                checkAnswer(letter);
              },
              child: Text(
                answer,
                style: kAnswerStyle,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
