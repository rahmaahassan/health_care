import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      width: double.infinity,
      child: RaisedButton(
        elevation: 2,
        color: Theme.of(context).buttonColor,
        textColor: Colors.white,
        child: Align(
            alignment: Alignment.centerLeft,
            child: Text(answerText, textAlign: TextAlign.left,)),
        onPressed: selectHandler,
      ), //RaisedButton
    ); //Container
  }
}
