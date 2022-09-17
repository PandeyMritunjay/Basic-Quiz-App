import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function()? selectAnswer;
  final String answerText;

  Answer(this.selectAnswer, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Color(0xFF3B007B),
        textColor: Colors.white,
        child: Text(
          answerText,
          style: TextStyle(fontSize: 20),
        ),
        onPressed: selectAnswer,
      ),
    );
  }
}
