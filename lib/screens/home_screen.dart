import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:saep_reakcje_organiczne/screens/welcome_screen.dart';
import 'package:saep_reakcje_organiczne/constants.dart';
import 'package:saep_reakcje_organiczne/components/rounded_button.dart';
import 'package:saep_reakcje_organiczne/screens/quiz_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _auth = FirebaseAuth.instance;
  late User loggedInUser;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        loggedInUser = user;
        print(loggedInUser.email);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF3a57ff),
        leading: null,
        actions: [
          IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                _auth.signOut();
                Navigator.pushNamed(context, WelcomeScreen.id);
              }),
        ],
      ),
      body: Scaffold(
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
                    height: 30.0,
                  ),
                  Text(
                    'Reakcje w chemii organicznej!',
                    textAlign: TextAlign.justify,
                    style: kTitleStyle,
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              RoundedButton(
                title: 'NAUKA',
                screenId: '',
                colour: kRoundedButtonColor,
              ),
              RoundedButton(
                  title: 'QUIZ',
                  screenId: QuizScreen.id,
                  colour: kRoundedButtonColor),
              const SizedBox(
                height: 20.0,
              ),
              const Expanded(
                child: Image(
                  image: AssetImage('images/flask_4.png'),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              kAuthorName,
              const SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
