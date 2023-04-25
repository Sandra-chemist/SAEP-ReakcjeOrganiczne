import 'package:saep_reakcje_organiczne/components/question.dart';

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question(
        questionText:
            '1. W jakich warunkch zachodzi reakcja substytucji rodnikowej bromu do etanu?',
        questionAnswer: 'A',
        answerA: 'światło i wysoka temperatura',
        answerB: 'chlorek żelaza(III)',
        answerC: 'stężony kwas siarkowy(VI)',
        answerD: 'nie są wymagane szczególne warunki'),
    Question(
        questionText:
            '2. Jaki odczynnik zastosować do odróżnienia propanolu od etano-1,2-diolu (glikol etylenowy)?',
        questionAnswer: 'C',
        answerA: 'wodór',
        answerB: 'chlorek żelaza(III)',
        answerC: 'wodorotlenek miedzi(II)',
        answerD: 'stężony kwas azotowy(V)'),
    Question(
        questionText: '3. Jaki jest skład mieszaniny nitrującej?',
        questionAnswer: 'B',
        answerA: 'rozcieńczony kwas azotowy(V) + stężony kwas siarkowy(VI)',
        answerB: 'stężony kwas azotowy(V) + stężony kwas siarkowym(VI)',
        answerC: 'kwas azotowy(III)',
        answerD: 'stężony kwas azotowy(III) + stężony kwas azotowy(V)'),
    Question(
        questionText: '4. Odczynnik do odróżniania glukozy od fruktozy to:',
        questionAnswer: 'B',
        answerA: 'odczynnik Tollensa',
        answerB:
            'roztwór bromu w obecności wodnego roztworu wodorowęglanu sodu',
        answerC: 'świeżo stącony wodorotlenek miedzi(II)',
        answerD: 'nie ma takiego odczynnika'),
    Question(
        questionText:
            '5. Jaki kolor osadu powstaje w próbie jodoformowej dla ketonów metylowych?',
        questionAnswer: 'D',
        answerA: 'biały',
        answerB: 'brunatny',
        answerC: 'pomarańczowy',
        answerD: 'żółty'),
    Question(
        questionText:
            '6. Do nitrowej pochodnej tyrozyny dodano zasady sodowej, wybierz jak zmienił się kolor roztworu.',
        questionAnswer: 'B',
        answerA: 'pomarańczowy -> zółty',
        answerB: 'żółty -> pomarańczowy',
        answerC: 'bezbarwny -> żółty',
        answerD: 'żółty -> bezbarwny'),
    Question(
        questionText:
            '7. Jaki gaz wydzieli się podczas reakcji roztworu mocznika ze stężonym kwasem siarkowym(VI)?',
        questionAnswer: 'A',
        answerA: 'tlenek węgla(IV)',
        answerB: 'amoniak',
        answerC: 'tlenek azotu(IV)',
        answerD: 'tlen'),
    Question(
        questionText:
            '8. Wybierz jaka będzie obserwacja lub obserwacje podczas reakcji etenu z manganianem(VII) potasu.',
        questionAnswer: 'C',
        answerA: 'brak objawów reakcji',
        answerB: 'fioletowy roztwór zmienia barwę na zieloną',
        answerC: 'fioletowy roztwór się odbarwia i powstaje brunatny osad',
        answerD: 'zielony roztwór przyjmuje fioletowe zabarwienie'),
    Question(
        questionText:
            '9. Co zauważymy podczas reakcji kwasu octowego z odczynnikiem Trommera w podwyższonej temperaturze?',
        questionAnswer: 'C',
        answerA: 'brak objawów reakcji',
        answerB: 'powstanie ceglasto-czerwony osad',
        answerC: 'powstanie czarny osad',
        answerD: 'powstanie niebieski osad'),
    Question(
        questionText: '10. Co możemy wykryć w próbie Lucasa?',
        questionAnswer: 'A',
        answerA: 'rzędowość alkoholi',
        answerB: 'podstawienie pierścienia aromatycznego',
        answerC: 'odróżnić aldehyd od ketonu',
        answerD: 'odczyn roztworu'),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  int getQuestionNumber() {
    return _questionBank.length;
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  String getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  String getAnswerA() {
    return _questionBank[_questionNumber].answerA;
  }

  String getAnswerB() {
    return _questionBank[_questionNumber].answerB;
  }

  String getAnswerC() {
    return _questionBank[_questionNumber].answerC;
  }

  String getAnswerD() {
    return _questionBank[_questionNumber].answerD;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
