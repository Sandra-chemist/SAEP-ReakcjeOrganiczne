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
      backgroundColor: Colors.lightBlue[400],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                const Image(
                  height: 150.0,
                  image: AssetImage('images/chemical_compounds.png'),
                ),
                CircleAvatar(
                  radius: 103.0,
                  backgroundColor: Colors.green[900],
                  child: const CircleAvatar(
                    radius: 100.0,
                    backgroundImage: AssetImage('images/logo_appka.png'),
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                const Text(
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
            kAuthorName,
          ],
        ),
      ),
    );
  }
}
