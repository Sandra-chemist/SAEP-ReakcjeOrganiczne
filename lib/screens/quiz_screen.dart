import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  static const String id = 'quiz_screen';
  QuizScreen({super.key});

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<Icon> scoreKeeper = [];

  List<String> chemicalQuestions = [
    'Jakie warunki przy reakcji substytucji rodnikowej?',
    'Jakim odczynnikiem odróżnimy alkohole mono od polihydroksylowych?',
    'Co to jest mieszanina nitrująca?',
  ];

  List<String> chemicalAnswers = [
    'A',
    'B',
    'D',
  ];

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
                  chemicalQuestions[questionNumber],
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
                    String correctAnswer = chemicalAnswers[questionNumber];
                    if (correctAnswer == 'A') {
                      print('is good');
                    } else {
                      print('is not good');
                    }
                    setState(() {
                      questionNumber++;
                    });
                  },
                  child: Text('A'),
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
                  String correctAnswer = chemicalAnswers[questionNumber];
                  if (correctAnswer == 'B') {
                    print('is good');
                  } else {
                    print('is not good');
                  }
                  setState(() {
                    questionNumber++;
                  });
                },
                child: Text('B'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () {
                  String correctAnswer = chemicalAnswers[questionNumber];
                  if (correctAnswer == 'C') {
                    print('is good');
                  } else {
                    print('is not good');
                  }
                  setState(() {
                    questionNumber++;
                  });
                },
                child: Text('C'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () {
                  String correctAnswer = chemicalAnswers[questionNumber];
                  if (correctAnswer == 'D') {
                    print('is good');
                  } else {
                    print('is not good');
                  }
                  setState(() {
                    questionNumber++;
                  });
                },
                child: Text('D'),
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
