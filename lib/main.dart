import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';

void main() => runApp(const ChemicalApp());

class ChemicalApp extends StatelessWidget {
  const ChemicalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WelcomeScreen(),
    );
  }
}
