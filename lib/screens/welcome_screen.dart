import 'package:flutter/material.dart';
import 'package:saep_reakcje_organiczne/screens/login_screen.dart';
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
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: const [
                Text(
                  textAlign: TextAlign.center,
                  'Reakcje chemiczne',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                  ),
                ),
              ],
            ),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Material(
                  color: Colors.red,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, LoginScreen.id);
                    },
                    child: const Text('Logowanie'),
                  ),
                )),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Material(
                color: Colors.blue,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RegistrationScreen.id);
                  },
                  child: const Text('Rejestracja'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
