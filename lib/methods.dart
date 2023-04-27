import 'package:flutter/material.dart';
import 'constants.dart';

SizedBox addSizeBox(double heigh) {
  return SizedBox(height: heigh);
}

InputDecoration addInputDecoration(String name) {
  return InputDecoration(
    hintText: name,
    hintStyle: const TextStyle(color: Colors.white),
    contentPadding:
        const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
    enabledBorder: kUnderlineInputBorder,
  );
}
