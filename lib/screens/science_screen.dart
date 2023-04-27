import 'package:flutter/material.dart';
import 'package:saep_reakcje_organiczne/components/blue_app_bar.dart';
import 'package:saep_reakcje_organiczne/constants.dart';
import 'package:saep_reakcje_organiczne/components/science_brain.dart';

ScienceBrain scienceBrain = ScienceBrain();

class ScienceScreen extends StatefulWidget {
  static const String id = 'science_screen';
  ScienceScreen({super.key});

  @override
  _ScienceScreenState createState() => _ScienceScreenState();
}

class _ScienceScreenState extends State<ScienceScreen> {
  void nextChemicalReaction() {
    setState(
      () {
        if (scienceBrain.isFinished() == true) {
          scienceBrain.reset();
        } else {
          scienceBrain.nextReaction();
        }
      },
    );
  }

  void previousChemicalReaction() {
    setState(() {
      scienceBrain.previousReaction();
    });
  }

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
              scienceBrain.getReactionTitle(),
              style: kTitleReactionStyle,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child:
                  Image(image: AssetImage(scienceBrain.getReactionEquation())),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(5.0),
              child: Image(
                  image: AssetImage(scienceBrain.getReactionInTestTube())),
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
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      scienceBrain.getDescriptionReaction(),
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 17.0,
                        fontFamily: 'Kalam',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 110.0),
            child: Row(
              children: [
                Material(
                  color: Color(0XFF3a86ff),
                  borderRadius: BorderRadius.circular(20.0),
                  elevation: 5,
                  child: MaterialButton(
                    onPressed: () {
                      previousChemicalReaction();
                    },
                    child: Icon(
                      Icons.keyboard_double_arrow_left_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
                Material(
                  color: Color(0XFF3a86ff),
                  borderRadius: BorderRadius.circular(20.0),
                  elevation: 5,
                  child: MaterialButton(
                    onPressed: () {
                      nextChemicalReaction();
                    },
                    child: Icon(
                      Icons.keyboard_double_arrow_right_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
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
