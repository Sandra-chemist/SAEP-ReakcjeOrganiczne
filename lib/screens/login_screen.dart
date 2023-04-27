import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:saep_reakcje_organiczne/constants.dart';
import 'package:saep_reakcje_organiczne/methods.dart';
import 'package:saep_reakcje_organiczne/screens/home_screen.dart';
import 'package:saep_reakcje_organiczne/components/blue_app_bar.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                addSizeBox(50),
                const Text(
                  'LOGOWANIE',
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
                email = value;
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
                color: const Color(0xFFbde0fe),
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
                    'Zaloguj',
                    style: kMaterialButtonStyle,
                  ),
                ),
              ),
            ),
            const Expanded(
              child: Image(
                image: AssetImage('images/flask_1.png'),
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
