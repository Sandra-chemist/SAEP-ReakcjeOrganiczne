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
            Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Material(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25.0),
                  elevation: 5.0,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, LoginScreen.id);
                    },
                    child: Text(
                      'Logowanie',
                      style: TextStyle(
                          fontFamily: 'Handlee',
                          fontSize: 25.0,
                          color: Colors.green[900],
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Material(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25.0),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RegistrationScreen.id);
                  },
                  child: Text(
                    'Rejestracja',
                    style: TextStyle(
                        fontFamily: 'Handlee',
                        fontSize: 25.0,
                        color: Colors.green[900],
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
