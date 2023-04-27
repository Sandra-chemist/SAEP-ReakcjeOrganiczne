import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:saep_reakcje_organiczne/methods.dart';
import 'package:saep_reakcje_organiczne/screens/home_screen.dart';
import 'package:saep_reakcje_organiczne/components/blue_app_bar.dart';
import 'package:saep_reakcje_organiczne/constants.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_screen';
  const RegistrationScreen({super.key});

  @override
  RegistrationScreenState createState() => RegistrationScreenState();
}

class RegistrationScreenState extends State<RegistrationScreen> {
  final _auth = FirebaseAuth.instance;
  late String email;
  late String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BlueAppBar(),
      backgroundColor: kBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                addSizeBox(40),
                const Text(
                  'REJESTRACJA',
                  textAlign: TextAlign.justify,
                  style: kTitleStyle,
                ),
              ],
            ),
            TextField(
              style: kHintTextStyle,
              textAlign: TextAlign.center,
              decoration: addInputDecoration('E-mail'),
              onChanged: (value) {
                password = value;
              },
            ),
            TextField(
              style: kHintTextStyle,
              textAlign: TextAlign.center,
              obscureText: true,
              decoration: addInputDecoration('Hasło'),
              onChanged: (value) {
                password = value;
              },
            ),
            addSizeBox(10),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                borderRadius: BorderRadius.circular(25.0),
                color: kRoundedButtonColor,
                child: MaterialButton(
                  onPressed: () async {
                    try {
                      final newUser = await _auth.signInWithEmailAndPassword(
                          email: email, password: password);
                      if (newUser != null) {
                        Navigator.pushNamed(context, HomeScreen.id);
                      }
                    } catch (e) {
                      print(e);
                    }
                  },
                  child: const Text(
                    'Rejestruj',
                    style: kMaterialButtonStyle,
                  ),
                ),
              ),
            ),
            const Expanded(
              child: Image(
                image: AssetImage('images/flask_2.png'),
              ),
            ),
            addSizeBox(5),
            kAuthorName,
            addSizeBox(10),
          ],
        ),
      ),
    );
  }
}
