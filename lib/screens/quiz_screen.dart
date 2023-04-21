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

  int questionNumber = 0;

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
                  quizBrain.getQuestionText(questionNumber),
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
                    String correctAnswer =
                        quizBrain.getQuestionAnswer(questionNumber);
                    if (correctAnswer == 'A') {
                      print('is good');
                    } else {
                      print('is not good');
                    }
                    setState(() {
                      questionNumber++;
                    });
                  },
                  child: Text(
                    quizBrain.getAnswerA(questionNumber),
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
                  String correctAnswer =
                      quizBrain.getQuestionAnswer(questionNumber);
                  if (correctAnswer == 'B') {
                    print('is good');
                  } else {
                    print('is not good');
                  }
                  setState(() {
                    questionNumber++;
                  });
                },
                child: Text(
                  quizBrain.getAnswerB(questionNumber),
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
                  String correctAnswer =
                      quizBrain.getQuestionAnswer(questionNumber);
                  if (correctAnswer == 'C') {
                    print('is good');
                  } else {
                    print('is not good');
                  }
                  setState(() {
                    questionNumber++;
                  });
                },
                child: Text(
                  quizBrain.getAnswerC(questionNumber),
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
                  String correctAnswer =
                      quizBrain.getQuestionAnswer(questionNumber);
                  if (correctAnswer == 'D') {
                    print('is good');
                  } else {
                    print('is not good');
                  }
                  setState(() {
                    questionNumber++;
                  });
                },
                child: Text(
                  quizBrain.getAnswerD(questionNumber),
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
