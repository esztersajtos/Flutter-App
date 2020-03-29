import 'package:flutter/material.dart';

void main() => (FirstApp());

class FirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var question = [
      'What is your favorie quarantine song?',
      'What is your favorite taste?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text('The question'),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
