import 'package:saep_reakcje_organiczne/components/science.dart';

class ScienceBrain {
  int _reactionNumber = 0;

  final List<Science> _scienceBank = [
    Science(
        titleReaction: 'Reakcja fenolu z jonami żelaza(III)',
        descriptionReaction: 'Reakcja zachodzi',
        reactionEquation: 'images/phenol.png',
        reactionInTestTube: 'images/test_tube_phenol.png'),
    Science(
        titleReaction: 'Reakcja glikolu z wodorotlenkiem miedzi(II)',
        descriptionReaction: 'dffffdf',
        reactionEquation: 'images/glycol.png',
        reactionInTestTube: 'images/test_tube_glycol.png'),
    Science(
        titleReaction: 'Reakcja fenolu z wodą bromową',
        descriptionReaction: 'fddsfreawe',
        reactionEquation: 'images/phenol_2.png',
        reactionInTestTube: 'images/test_tube_phenol_2.png'),
    Science(
        titleReaction: 'Próba jodoformowa',
        descriptionReaction: 'fddsfreawe',
        reactionEquation: 'images/iodoform.png',
        reactionInTestTube: 'images/test_tube_iodoform.png'),
    Science(
        titleReaction: 'Reakcja glukozy z wodą bromową',
        descriptionReaction: 'fddsfreawe',
        reactionEquation: 'images/glucose.png',
        reactionInTestTube: 'images/test_tube_glucose.png'),
  ];

  void nextReaction() {
    if (_reactionNumber < _scienceBank.length - 1) {
      _reactionNumber++;
    }
  }

  int getReactionNumber() {
    return _scienceBank.length;
  }

  String getReactionTitle() {
    return _scienceBank[_reactionNumber].titleReaction;
  }

  String getDescriptionReaction() {
    return _scienceBank[_reactionNumber].descriptionReaction;
  }

  String getReactionEquation() {
    return _scienceBank[_reactionNumber].reactionEquation;
  }

  String getReactionInTestTube() {
    return _scienceBank[_reactionNumber].reactionInTestTube;
  }

  bool isFinished() {
    if (_reactionNumber >= _scienceBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _reactionNumber = 0;
  }
}
