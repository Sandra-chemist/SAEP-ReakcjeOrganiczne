import 'package:flutter/material.dart';

const kTitleStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontFamily: 'Handlee',
  color: Color(0xFFfef9ef),
  fontSize: 30.0,
  shadows: [
    Shadow(
      offset: Offset(6.0, 6.0),
      blurRadius: 8.0,
      color: Color.fromARGB(125, 0, 0, 255),
    ),
  ],
);

const kAuthorName = Text(
  'Dr Sandra Skibiszewska',
  textAlign: TextAlign.center,
  style: TextStyle(
    color: Color(0xFFa2d2ff),
    fontFamily: 'Handlee',
    fontSize: 20.0,
    shadows: [
      Shadow(
        offset: Offset(4.0, 4.0),
        blurRadius: 8.0,
        color: Color.fromARGB(125, 0, 0, 255),
      ),
    ],
  ),
);
