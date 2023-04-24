import 'package:flutter/material.dart';

class TextFieldOfInput extends StatelessWidget {
  TextFieldOfInput({required this.value, required this.title});

  late String value;
  late String title;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.white),
      obscureText: true,
      textAlign: TextAlign.center,
      onChanged: (value) {
        value = value;
      },
      decoration: InputDecoration(
        hintText: title,
        hintStyle: TextStyle(color: Colors.white),
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
