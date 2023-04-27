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
      body: Column(
        children: [
          kSizedBox10,
          Title(
            color: Colors.black,
            child: Text(
              scienceBrain.getReactionTitle(),
              style: kTitleReactionStyle,
            ),
          ),
          kSizedBox10,
          addExpandedWidget(
            Image(
              image: AssetImage(
                scienceBrain.getReactionEquation(),
              ),
            ),
          ),
          addExpandedWidget(
            Image(image: AssetImage(scienceBrain.getReactionInTestTube())),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Container(
                decoration: const BoxDecoration(
                  color: kBackgroundColor,
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      scienceBrain.getDescriptionReaction(),
                      textAlign: TextAlign.justify,
                      style: kDescriptionStyle,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 110.0),
            child: Row(
              children: [
                addArrowButton(Icons.keyboard_double_arrow_left_outlined),
                const SizedBox(
                  width: 5.0,
                ),
                addArrowButton(Icons.keyboard_double_arrow_right_outlined),
              ],
            ),
          ),
          kSizedBox10,
        ],
      ),
    );
  }

  Expanded addExpandedWidget(Image image) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: image,
      ),
    );
  }

  Material addArrowButton(IconData icon) {
    return Material(
      color: kBackgroundColor,
      borderRadius: BorderRadius.circular(25.0),
      elevation: 5,
      child: MaterialButton(
        onPressed: () {
          previousChemicalReaction();
        },
        child: Icon(
          icon,
          color: Colors.white,
          size: 35.0,
        ),
      ),
    );
  }
}
