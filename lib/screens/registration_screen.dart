import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_screen';
  RegistrationScreen({super.key});

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
            TextField(
              onChanged: (value) {},
              decoration: const InputDecoration(
                  hintText: 'E-mail',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0)),
            ),
            TextField(
              onChanged: (value) {},
              decoration: const InputDecoration(
                  hintText: 'Hasło',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: Colors.red,
                child: MaterialButton(
                  onPressed: () {},
                  child: const Text(
                    'Zarejestruj się',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
