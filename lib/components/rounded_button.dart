import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton(
      {required this.title, required this.screenId, required this.colour});

  String title;
  String screenId;
  Color colour;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Material(
        color: colour,
        borderRadius: BorderRadius.circular(25.0),
        elevation: 6.0,
        child: MaterialButton(
          onPressed: () {
            Navigator.pushNamed(context, screenId);
          },
          child: Text(
            title,
            style: const TextStyle(
              fontFamily: 'Handlee',
              fontSize: 25.0,
              color: Color(0XFF3a86ff),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
