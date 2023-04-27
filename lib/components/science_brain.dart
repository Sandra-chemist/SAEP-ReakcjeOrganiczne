import 'package:saep_reakcje_organiczne/components/science.dart';

class ScienceBrain {
  int _reactionNumber = 0;

  final List<Science> _scienceBank = [
    Science(
        titleReaction: 'Reakcja fenolu z jonami żelaza(III)',
        descriptionReaction:
            'Reakcja pozwala na odróżnienie grupy hydroskylowej przyłączonej do pierścienia aromatycznego (fenolu) od grupy hydroksylowej przyłączonej do łańcucha alifatycznego (alkoholu).',
        reactionEquation: 'images/reaction_equations/phenol.png',
        reactionInTestTube: 'images/test_tube_reactions/test_tube_phenol.png'),
    Science(
        titleReaction: 'Reakcja glikolu z wodorotlenkiem miedzi(II)',
        descriptionReaction:
            'Reakcja pozwala odróżnić alkohole monohydroksylowe (reakcja nie zachodzi) od polihydroksylowych. W wyniku reakcji etano-1,2-diolu z wodorotlenkiem miedzi(II) roztwarza się i powstaje związek koordynacyjny, dający szafirowe zabarwienie ',
        reactionEquation: 'images/reaction_equations/glycol.png',
        reactionInTestTube: 'images/test_tube_reactions/test_tube_glycol.png'),
    Science(
        titleReaction: 'Reakcja fenolu z wodą bromową',
        descriptionReaction:
            'Roztwór fenolu odbarwi wodę bromową, ponieważ zajdzie reackja substytucji elektrofilowej.',
        reactionEquation: 'images/reaction_equations/phenol_2.png',
        reactionInTestTube:
            'images/test_tube_reactions/test_tube_phenol_2.png'),
    Science(
        titleReaction: 'Próba jodoformowa',
        descriptionReaction:
            'Próba jodoformowa służy do identyfikacji metyloketonów. Pozytywna próba daje żółty osad trijodometanu (jodoformu).',
        reactionEquation: 'images/reaction_equations/iodoform.png',
        reactionInTestTube:
            'images/test_tube_reactions/test_tube_iodoform.png'),
    Science(
        titleReaction: 'Reakcja glukozy z wodą bromową',
        descriptionReaction:
            'Reakcję wykorzystuje się do odróżniania glukozy (aldozy) od fruktozy (ketozy). Roztwór glukozy odbarwia wodę bromową w obecności wodnego roztworu wodorowęglanu sodu. Wydzialają się również pęcherzyki gazu. W tch warunkach woda bromowa nie utlenia fruktozy',
        reactionEquation: 'images/reaction_equations/glucose.png',
        reactionInTestTube: 'images/test_tube_reactions/test_tube_glucose.png'),
  ];

  void nextReaction() {
    if (_reactionNumber < _scienceBank.length - 1) {
      _reactionNumber++;
    }
  }

  void previousReaction() {
    if (_reactionNumber == 0) {
      _reactionNumber;
    } else if (_reactionNumber <= _scienceBank.length - 1) {
      _reactionNumber--;
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
