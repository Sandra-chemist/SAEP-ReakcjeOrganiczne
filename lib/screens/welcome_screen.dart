import 'package:flutter/material.dart';
import 'package:saep_reakcje_organiczne/methods.dart';
import 'package:saep_reakcje_organiczne/screens/login_screen.dart';
import 'package:saep_reakcje_organiczne/components/rounded_button.dart';
import 'package:saep_reakcje_organiczne/screens/registration_screen.dart';
import 'package:saep_reakcje_organiczne/constants.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  const WelcomeScreen({super.key});

  @override
  WelcomeScreenState createState() => WelcomeScreenState();
}

class WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                addSizeBox(20),
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
                addSizeBox(20),
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
            addSizeBox(70),
            kAuthorName,
          ],
        ),
      ),
    );
  }
}
