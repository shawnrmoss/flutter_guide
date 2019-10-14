import 'package:flutter/material.dart';

import 'package:guide/quiz.dart';
import 'package:guide/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        'Black',
        'Green',
        'Red',
        'White',
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        'Rabbit',
        'Snake',
        'Elephant',
        'Lion',
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        'Max',
        'Max',
        'Max',
        'Max',
      ],
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    if (_questionIndex < _questions.length) {}

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(),
      ),
    );
  }
}
