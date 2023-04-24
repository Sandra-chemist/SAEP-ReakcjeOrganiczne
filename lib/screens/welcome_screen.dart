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
      backgroundColor: const Color(0XFF3a86ff),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 30.0,
                ),
                Container(
                  decoration: kLogoDecoration,
                  child: const CircleAvatar(
                    radius: 100.0,
                    backgroundImage: AssetImage('images/logo.png'),
                  ),
                ),
                const Image(
                  height: 150.0,
                  image: AssetImage('images/chemical_compounds.png'),
                ),
                const Text(
                  'Reakcje w chemii organicznej!',
                  textAlign: TextAlign.justify,
                  style: kTitleStyle,
                ),
                const SizedBox(
                  height: 20.0,
                ),
              ],
            ),
            RoundedButton(
              title: 'Logowanie',
              screenId: LoginScreen.id,
              colour: const Color(0xFFbde0fe),
            ),
            RoundedButton(
              title: 'Rejestracja',
              screenId: RegistrationScreen.id,
              colour: const Color(0xFFbde0fe),
            ),
            const SizedBox(
              height: 50.0,
            ),
            kAuthorName,
          ],
        ),
      ),
    );
  }
}
