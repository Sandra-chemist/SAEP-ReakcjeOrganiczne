import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:saep_reakcje_organiczne/constants.dart';
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
      appBar: AppBar(
        backgroundColor: Color(0xFF3a57ff),
        leading: IconButton(
            icon: const Icon(
              Icons.arrow_circle_left_rounded,
              size: 30.0,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      backgroundColor: const Color(0XFF3a86ff),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: const [
                Text(
                  'LOGOWANIE',
                  textAlign: TextAlign.justify,
                  style: kTitleStyle,
                ),
              ],
            ),
            TextField(
              style: TextStyle(color: Colors.white),
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              onChanged: (value) {
                email = value;
              },
              decoration: const InputDecoration(
                  hintText: 'E-mail',
                  hintStyle: TextStyle(color: Colors.white),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  )),
            ),
            TextField(
              style: TextStyle(color: Colors.white),
              obscureText: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                password = value;
              },
              decoration: const InputDecoration(
                hintText: 'Hasło',
                hintStyle: TextStyle(color: Colors.white),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                borderRadius: BorderRadius.circular(25.0),
                color: const Color(0xFFbde0fe),
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
                        color: const Color(0XFF3a86ff),
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
