import 'package:flutter/material.dart';
import 'package:saep_reakcje_organiczne/components/blue_app_bar.dart';
import 'package:saep_reakcje_organiczne/constants.dart';
import 'package:saep_reakcje_organiczne/components/science_brain.dart';
import 'package:saep_reakcje_organiczne/methods.dart';

ScienceBrain scienceBrain = ScienceBrain();

class ScienceScreen extends StatefulWidget {
  static const String id = 'science_screen';
  const ScienceScreen({super.key});

  @override
  ScienceScreenState createState() => ScienceScreenState();
}

class ScienceScreenState extends State<ScienceScreen> {
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
          addSizeBox(8),
          Title(
            color: Colors.black,
            child: Text(
              scienceBrain.getReactionTitle(),
              style: kTitleReactionStyle,
            ),
          ),
          addSizeBox(10),
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 5.0),
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
                addArrowButton(Icons.keyboard_double_arrow_left_outlined,
                    previousChemicalReaction),
                const SizedBox(
                  width: 5,
                ),
                addArrowButton(Icons.keyboard_double_arrow_right_outlined,
                    nextChemicalReaction),
              ],
            ),
          ),
          addSizeBox(10),
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

  Material addArrowButton(IconData icon, void Function() function) {
    return Material(
      color: kBackgroundColor,
      borderRadius: BorderRadius.circular(25.0),
      elevation: 5,
      child: MaterialButton(
        onPressed: function,
        child: Icon(
          icon,
          color: Colors.white,
          size: 35.0,
        ),
      ),
    );
  }
}
