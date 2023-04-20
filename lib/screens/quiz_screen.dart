import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  static const String id = 'quiz_screen';
  QuizScreen({super.key});

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(5.0),
              child: Center(
                child: Text(
                  'Pytanie',
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
                  onPressed: () {},
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
                onPressed: () {},
                child: Text('B'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () {},
                child: Text('C'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () {},
                child: Text('D'),
              ),
            ),
          ),
          Row(
            children: const [
              Icon(
                Icons.check,
                color: Colors.white,
              ),
              Icon(
                Icons.close,
                color: Colors.red,
              ),
            ],
          )
        ],
      ),
    );
  }
}
