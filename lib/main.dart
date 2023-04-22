import 'package:flutter/material.dart';
import 'package:saep_reakcje_organiczne/screens/quiz_screen.dart';
import 'screens/welcome_screen.dart';
import 'screens/registration_screen.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() => runApp(const ChemicalApp());

class ChemicalApp extends StatelessWidget {
  const ChemicalApp({super.key});

  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp();
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        QuizScreen.id: (context) => QuizScreen(),
      },
    );
  }
}
