import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({required this.title, required this.screenId});

  String title;
  String screenId;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25.0),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: () {
            Navigator.pushNamed(context, screenId);
          },
          child: Text(
            title,
            style: TextStyle(
                fontFamily: 'Handlee',
                fontSize: 25.0,
                color: Colors.green[900],
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
