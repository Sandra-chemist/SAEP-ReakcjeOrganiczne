import 'package:saep_reakcje_organiczne/components/question.dart';

class QuizBrain {
  List<Question> _questionBank = [
    Question(
        questionText: 'Jakie warunki przy reakcji substytucji rodnikowej?',
        questionAnswer: 'A',
        answerA: 'światło',
        answerB: 'chlorek żelaza (III)',
        answerC: 'stężony kwas siarkowy',
        answerD: 'nie są wymagane szczególne warunki'),
    Question(
        questionText:
            'Jakim odczynnikiem odróżnimy alkohole mono od polihydroksylowych?',
        questionAnswer: 'C',
        answerA: 'wodór',
        answerB: 'nie odróżnimy',
        answerC: 'wodorotlenek miedzi (II)',
        answerD: 'stężony kwas azotowy'),
    Question(
        questionText: 'Co to jest mieszanina nitrująca?',
        questionAnswer: 'B',
        answerA: 'nie ma czegoś takiego',
        answerB: 'stężony kwas azotowy zmieszany ze stężonym kwasem siarkowym',
        answerC: 'kwas azotowy (III)',
        answerD: 'zmieszany kwas azotowy (III) i kwas azotowy (V)'),
  ];

  String getQuestionText(int questionNumber) {
    return _questionBank[questionNumber].questionText;
  }

  String getQuestionAnswer(int questionNumber) {
    return _questionBank[questionNumber].questionAnswer;
  }

  String getAnswerA(int questionNumber) {
    return _questionBank[questionNumber].answerA;
  }

  String getAnswerB(int questionNumber) {
    return _questionBank[questionNumber].answerB;
  }

  String getAnswerC(int questionNumber) {
    return _questionBank[questionNumber].answerC;
  }

  String getAnswerD(int questionNumber) {
    return _questionBank[questionNumber].answerD;
  }
}
