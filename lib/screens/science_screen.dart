import 'package:flutter/material.dart';
import 'package:saep_reakcje_organiczne/components/blue_app_bar.dart';
import 'package:saep_reakcje_organiczne/constants.dart';

class ScienceScreen extends StatefulWidget {
  static const String id = 'science_screen';
  ScienceScreen({super.key});

  @override
  _ScienceScreenState createState() => _ScienceScreenState();
}

class _ScienceScreenState extends State<ScienceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BlueAppBar(),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 20.0,
          ),
          Title(
            color: Colors.black,
            child: Text(
              'Reakcja fenolu z jonami żelaza(III)',
              style: kTitleReactionStyle,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Image(image: AssetImage('images/phenol.png')),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0XFF3a86ff),
                ),
                child: Center(
                  child: Text(
                    'Reakcja zachodzi',
                    style: TextStyle(
                      fontFamily: 'Kalam',
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Material(
            color: Color(0XFF3a86ff),
            borderRadius: BorderRadius.circular(20.0),
            elevation: 5,
            child: const MaterialButton(
              onPressed: null,
              child: Icon(
                Icons.double_arrow_outlined,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}
