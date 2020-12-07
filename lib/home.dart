import 'package:flutter/material.dart';
import 'package:health_care/check_up.dart';

import 'result.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  final _questions = const [
    {
      'questionText': 'How do you feel?',
      'answers': [
        {'text': 'Chest Pain', 'score': 1},
        {'text': 'Chills', 'score': 2},
        {'text': 'Fatigue', 'score': 3},
        {'text': 'Loss of balance', 'score': 4},
        {'text': 'Continuous Sneezing', 'score': 5},
        {'text': 'Nausea', 'score': 6},
      ],
    },
    {
      'questionText': 'Do you have any of the following symptoms as well?',
      'answers': [
       {'text': 'Cough, Vomiting, Ulcers on tongue, Acidity and Stomach Pain.', 'score': 1},
        {'text': 'Shivering, Watering from eyes and Continuous Sneezing.', 'score': 2},
        {'text': 'Weight Loss, Restlessness, Lethargy, Irregular sugar level and Excessive Hunger.', 'score': 3},
        {'text': 'Headache, Dizziness, Lack of concentration and Chest_pain.', 'score': 4},
        {'text': 'Fatigue, High Fever, Headache, Swelled lymph nodes,	Malaise, Phlegm, Throat Irritation And Redness of eyes.', 'score': 5},
        {'text': 'Vomiting, Fatigue, Sweating, Excessive Hunger, Blurred and distorted vision.', 'score': 6},
      ],
    },
    /*{
      'questionText': 'If you have any other symptoms, choose it?',
      'answers': [
       {'text': 'Lack of concentration', 'score': 1},
        {'text': 'Mucoid Sputum', 'score': 2},
        {'text': 'Excessive Hunger', 'score': 3},
        //{'text': 'Bloody Stool', 'score': 4},
        //{'text': 'Sweating', 'score': 5},
       //{'text': 'Painful Walking', 'score': 6},
      ],
    },*/
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(55),
              height: 230,
              child: Image.asset('assets/images/logo.png',),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: _questionIndex < _questions.length
                  ? CheckupScreen(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
                  : Result(_totalScore, _resetQuiz),
            ),
          ],
        ),
    );
  }
}