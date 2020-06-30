import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override 
  State<StatefulWidget> createState() {
    //TODO:
    return _MyAppState();
 }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': [
          {'text': 'Black', 'score': 1}, 
          {'text': 'Blue', 'score': 2}, 
          {'text': 'Green', 'score': 4},
        ],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': [
          {'text': 'Frog', 'score': 7}, 
          {'text': 'Goose', 'score': 5}, 
          {'text': 'FaszMadar', 'score': 1},
        ],
      },
      {
        'questionText': 'What\'s your favorite food?',
        'answers': [
          {'text': 'Sopron', 'score': 7}, 
          {'text': 'Gyor', 'score': 8}, 
          {'text': 'Becske', 'score': 1},
        ],
      },
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

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length ? 
          Quiz(
            answerQuestion: _answerQuestion, 
            questionIndex: _questionIndex, 
            questions: _questions,
          )
        : Result(_totalScore, _resetQuiz),
      ),
    ); 
  }
}
