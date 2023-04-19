import 'package:flutter/material.dart';
import 'package:saep_reakcje_organiczne/screens/login_screen.dart';
import 'package:saep_reakcje_organiczne/components/rounded_button.dart';
import 'package:saep_reakcje_organiczne/screens/registration_screen.dart';
import 'package:saep_reakcje_organiczne/constants.dart';

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
                CircleAvatar(
                  radius: 103.0,
                  backgroundColor: Colors.green[900],
                  child: const CircleAvatar(
                    radius: 100.0,
                    backgroundImage: AssetImage('images/logo_appka.png'),
                  ),
                ),
                Text(
                  'Reakcje w chemii organicznej!',
                  textAlign: TextAlign.justify,
                  style: kTitleStyle,
                ),
              ],
            ),
            RoundedButton(
              title: 'Logowanie',
              screenId: LoginScreen.id,
              colour: Colors.white,
            ),
            RoundedButton(
              title: 'Rejestracja',
              screenId: RegistrationScreen.id,
              colour: Colors.white,
            ),
            const Text(
              'Dr Sandra Skibiszewska',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xFF1B5E20),
                  fontFamily: 'Handlee',
                  fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
