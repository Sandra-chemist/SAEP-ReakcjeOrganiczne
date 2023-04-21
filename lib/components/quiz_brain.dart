import 'package:saep_reakcje_organiczne/components/question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
        questionText: '1. Jakie warunki przy reakcji substytucji rodnikowej?',
        questionAnswer: 'A',
        answerA: 'światło',
        answerB: 'chlorek żelaza (III)',
        answerC: 'stężony kwas siarkowy',
        answerD: 'nie są wymagane szczególne warunki'),
    Question(
        questionText:
            '2. Jakim odczynnikiem odróżnimy alkohole mono od polihydroksylowych?',
        questionAnswer: 'C',
        answerA: 'wodór',
        answerB: 'nie odróżnimy',
        answerC: 'wodorotlenek miedzi (II)',
        answerD: 'stężony kwas azotowy'),
    Question(
        questionText: '3. Co to jest mieszanina nitrująca?',
        questionAnswer: 'B',
        answerA: 'nie ma czegoś takiego',
        answerB: 'stężony kwas azotowy zmieszany ze stężonym kwasem siarkowym',
        answerC: 'kwas azotowy (III)',
        answerD: 'zmieszany kwas azotowy (III) i kwas azotowy (V)'),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
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
}
