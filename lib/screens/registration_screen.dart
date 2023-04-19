import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:saep_reakcje_organiczne/screens/home_screen.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_screen';
  RegistrationScreen({super.key});

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
                      final newUser =
                          await _auth.createUserWithEmailAndPassword(
                              email: email, password: password);
                      if (newUser != null) {
                        Navigator.pushNamed(context, HomeScreen.id);
                      }
                    } catch (e) {
                      print(e);
                    }
                  },
                  child: Text(
                    'Zarejestruj',
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
