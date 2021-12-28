import 'package:flutter/material.dart';

class ShowText extends StatelessWidget {
  final _text;

  ShowText(this._text);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        _text,
        style: TextStyle(
          fontSize: 20
        ),
        textAlign: TextAlign.center,
      ),
      margin: EdgeInsets.all(10),
    );
  }
}