import 'package:flutter/material.dart';
import 'package:saep_reakcje_organiczne/components/quiz_brain.dart';

QuizBrain quizBrain = QuizBrain();

class QuizScreen extends StatefulWidget {
  static const String id = 'quiz_screen';
  QuizScreen({super.key});

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<Icon> scoreKeeper = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
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
                  style: TextStyle(fontSize: 25.0, color: Colors.white),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: SizedBox(
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.white),
                  onPressed: () {
                    String correctAnswer = quizBrain.getQuestionAnswer();
                    if (correctAnswer == 'A') {
                      print('is good');
                    } else {
                      print('is not good');
                    }
                    setState(() {
                      quizBrain.nextQuestion();
                    });
                  },
                  child: Text(
                    quizBrain.getAnswerA(),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () {
                  String correctAnswer = quizBrain.getQuestionAnswer();
                  if (correctAnswer == 'B') {
                    print('is good');
                  } else {
                    print('is not good');
                  }
                  setState(() {
                    quizBrain.nextQuestion();
                  });
                },
                child: Text(
                  quizBrain.getAnswerB(),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () {
                  String correctAnswer = quizBrain.getQuestionAnswer();
                  if (correctAnswer == 'C') {
                    print('is good');
                  } else {
                    print('is not good');
                  }
                  setState(() {
                    quizBrain.nextQuestion();
                  });
                },
                child: Text(
                  quizBrain.getAnswerC(),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () {
                  String correctAnswer = quizBrain.getQuestionAnswer();
                  if (correctAnswer == 'D') {
                    print('is good');
                  } else {
                    print('is not good');
                  }
                  setState(() {
                    quizBrain.nextQuestion();
                  });
                },
                child: Text(
                  quizBrain.getAnswerD(),
                ),
              ),
            ),
          ),
          Row(
            children: scoreKeeper,
          )
        ],
      ),
    );
  }
}
