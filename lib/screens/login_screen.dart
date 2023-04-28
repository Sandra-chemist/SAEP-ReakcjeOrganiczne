import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:saep_reakcje_organiczne/constants.dart';
import 'package:saep_reakcje_organiczne/methods.dart';
import 'package:saep_reakcje_organiczne/screens/home_screen.dart';
import 'package:saep_reakcje_organiczne/components/blue_app_bar.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  const LoginScreen({super.key});

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;
  bool showSpinner = false;
  late String email;
  late String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BlueAppBar(),
      backgroundColor: kBackgroundColor,
      body: ModalProgressHUD(
        color: Colors.black,
        progressIndicator: const CircularProgressIndicator(
          color: Colors.white,
        ),
        inAsyncCall: showSpinner,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                children: [
                  addSizeBox(40),
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
                      setState(() {
                        showSpinner = true;
                      });
                      try {
                        final newUser = await _auth.signInWithEmailAndPassword(
                            email: email, password: password);
                        if (newUser != null) {
                          Navigator.pushNamed(context, HomeScreen.id);
                        }
                        setState(() {
                          showSpinner = false;
                        });
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
      ),
    );
  }
}
