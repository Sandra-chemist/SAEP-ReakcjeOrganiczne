import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:saep_reakcje_organiczne/constants.dart';
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
              children: const [
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  'LOGOWANIE',
                  textAlign: TextAlign.justify,
                  style: kTitleStyle,
                ),
              ],
            ),
            TextField(
              style: const TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                hintText: 'E-mail',
                hintStyle: TextStyle(color: Colors.white),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                enabledBorder: kUnderlineInputBorder,
              ),
              onChanged: (value) {
                email = value;
              },
            ),
            TextField(
              style: const TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Hasło',
                hintStyle: TextStyle(color: Colors.white),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                enabledBorder: kUnderlineInputBorder,
              ),
              onChanged: (value) {
                password = value;
              },
            ),
            const SizedBox(
              height: 10.0,
            ),
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
            const SizedBox(
              height: 5.0,
            ),
            kAuthorName,
            const SizedBox(
              height: 10.0,
            )
          ],
        ),
      ),
    );
  }
}
