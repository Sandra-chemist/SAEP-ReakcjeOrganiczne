import 'package:flutter/material.dart';
import 'package:saep_reakcje_organiczne/screens/login_screen.dart';
import 'package:saep_reakcje_organiczne/components/rounded_button.dart';
import 'package:saep_reakcje_organiczne/screens/registration_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  WelcomeScreen({super.key});

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[400],
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Text(
                  'Reakcje w chemii organicznej!',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Handlee',
                    color: Colors.green[900],
                    fontSize: 30.0,
                  ),
                ),
                SizedBox(
                  height: 40.0,
                )
              ],
            ),
            RoundedButton(
              title: 'Logowanie',
              screenId: LoginScreen.id,
            ),
            RoundedButton(
              title: 'Rejestracja',
              screenId: RegistrationScreen.id,
            ),
          ],
        ),
      ),
    );
  }
}
