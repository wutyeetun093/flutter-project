import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = "You are awsome!";
    } else if (resultScore <= 12) {
      resultText = "Pretty likable!";
    } else if (resultScore <= 16) {
      resultText = "You are ... stranger!";
    } else {
      resultText = "You are so bad!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          child: Text(
            "Reset Quiz",
            style: TextStyle(fontSize: 20),
          ),
          textColor: Colors.blue,
          onPressed: resetHandler,
        )
      ],
    ));
  }
}
