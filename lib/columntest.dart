import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_testing/quiz.dart';
import 'package:flutter_testing/result.dart';

class ColumnTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ColumnTestState();
  }
}

class _ColumnTestState extends State<ColumnTest> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {"text": 'Black', "score": 10},
        {"text": 'Red', "score": 5},
        {"text": 'Blue', "score": 3},
        {"text": 'White', "score": 1}
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {"text": 'Elephant', "score": 3},
        {"text": 'Rabbit', "score": 11},
        {"text": 'Lion', "score": 5},
        {"text": 'Snake', "score": 9},
      ],
    },
    {
      'questionText': 'Who\'s your favourite instructor?',
      'answers': [
        {"text": 'Max', "score": 1},
        {"text": 'Max', "score": 1},
        {"text": 'Max', "score": 1},
        {"text": 'Max', "score": 1},
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
      _questionIndex = _questionIndex + 2;
    });
//    print(_questions[_questionIndex]);
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("We have more questions");
    } else {
      print("No more questions!");
    }
  }

  @override
  Widget build(BuildContext context) {
//   var dummy=const ["hello"];
//   dummy.add("max");
//   print(dummy);
//   dummy[];

    //questions=[];//does not work if questions is const
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("First My App"),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
