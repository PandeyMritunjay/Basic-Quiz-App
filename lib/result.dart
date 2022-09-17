import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function() resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 20) {
      resultText = 'You are amazing!';
    } else if (resultScore <= 30) {
      resultText = 'You are wonderful!';
    } else {
      resultText = 'Get a life, m8';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            color: Colors.deepPurple,
            onPressed: resetQuiz,
            child: Text("Restart quiz?", textAlign: TextAlign.center),
            textColor: Colors.black87,
          )
        ],
      ),
    );
  }
}
