import 'package:flutter/material.dart';

class ButtonControl extends StatelessWidget {

  final VoidCallback indexHandler;

  ButtonControl(this.indexHandler);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        'Change It!',
      ),
      onPressed: indexHandler,
      style: ElevatedButton.styleFrom(
        primary: Colors.blue,
      )
    );
  }
}