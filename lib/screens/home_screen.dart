import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:saep_reakcje_organiczne/screens/welcome_screen.dart';
import 'package:saep_reakcje_organiczne/constants.dart';
import 'package:saep_reakcje_organiczne/components/rounded_button.dart';

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
        backgroundColor: Colors.lightGreen,
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
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                children: const [
                  Text(
                    'Reakcje w chemii organicznej!',
                    textAlign: TextAlign.justify,
                    style: kTitleStyle,
                  ),
                ],
              ),
              RoundedButton(
                  title: 'NAUKA', screenId: '', colour: Colors.lightGreen),
              RoundedButton(
                  title: 'QUIZ', screenId: '', colour: Colors.lightGreen),
              RoundedButton(
                  title: 'PUNKTY', screenId: '', colour: Colors.lightGreen),
              const Text(
                'Dr Sandra Skibiszewska',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xFF1B5E20),
                    fontFamily: 'Handlee',
                    fontSize: 20.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
