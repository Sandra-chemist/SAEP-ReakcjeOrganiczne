import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:saep_reakcje_organiczne/screens/home_screen.dart';

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
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Text(
                  'LOGOWANIE',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 30.0,
                      fontFamily: 'Handlee',
                      color: Colors.green[900]),
                ),
              ],
            ),
            IconButton(
                icon: const Icon(
                  Icons.arrow_circle_left_rounded,
                  size: 40.0,
                  color: Colors.lightGreen,
                ),
                onPressed: () {
                  _auth.signOut();
                  Navigator.pop(context);
                }),
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              onChanged: (value) {
                email = value;
              },
              decoration: const InputDecoration(
                  hintText: 'E-mail',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0)),
            ),
            TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                password = value;
              },
              decoration: const InputDecoration(
                  hintText: 'Hasło',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: Colors.white,
                child: MaterialButton(
                  onPressed: () async {
                    print(email);
                    print(password);
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
                  child: Text(
                    'Zaloguj',
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
