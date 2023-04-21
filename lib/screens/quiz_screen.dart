import 'package:flutter/material.dart';
import 'package:saep_reakcje_organiczne/components/question.dart';
import 'package:saep_reakcje_organiczne/components/question.dart';

class QuizScreen extends StatefulWidget {
  static const String id = 'quiz_screen';
  QuizScreen({super.key});

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<Icon> scoreKeeper = [];

  List<Question> questionBank = [
    Question(
        questionText: 'Jakie warunki przy reakcji substytucji rodnikowej?',
        questionAnswer: 'A',
        answerA: 'światło',
        answerB: 'chlorek żelaza (III)',
        answerC: 'stężony kwas siarkowy',
        answerD: 'nie są wymagane szczególne warunki'),
    Question(
        questionText:
            'Jakim odczynnikiem odróżnimy alkohole mono od polihydroksylowych?',
        questionAnswer: 'C',
        answerA: 'wodór',
        answerB: 'nie odróżnimy',
        answerC: 'wodorotlenek miedzi (II)',
        answerD: 'stężony kwas azotowy'),
    Question(
        questionText: 'Co to jest mieszanina nitrująca?',
        questionAnswer: 'B',
        answerA: 'nie ma czegoś takiego',
        answerB: 'stężony kwas azotowy zmieszany ze stężonym kwasem siarkowym',
        answerC: 'kwas azotowy (III)',
        answerD: 'zmieszany kwas azotowy (III) i kwas azotowy (V)'),
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
                  questionBank[questionNumber].questionText,
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
                        questionBank[questionNumber].questionAnswer;
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
                    questionBank[questionNumber].answerA,
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
                      questionBank[questionNumber].questionAnswer;
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
                  questionBank[questionNumber].answerB,
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
                      questionBank[questionNumber].questionAnswer;
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
                  questionBank[questionNumber].answerC,
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
                      questionBank[questionNumber].questionAnswer;
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
                  questionBank[questionNumber].answerD,
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
