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
        'answers': ['Black', 'Blue', 'Green'],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Frog', 'Goose', 'FaszMadar'],
      },
      {
        'questionText': 'What\'s your favorite food?',
        'answers': ['Frog', 'Goose', 'FaszMadar'],
      },
    ];
  var _questionIndex = 0;

  void _answerQuestion() {

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
        : Result(),
      ),
    ); 
  }
}
