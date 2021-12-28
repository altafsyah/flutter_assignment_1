import 'package:flutter/material.dart';
import './button_control.dart';
import './show_text.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var texts = [
    'Hello, this is the first line',
    'And this is the second one',
    'Promise, this is the last'
  ];

  var _index = 0;
  void _changeText(){
    setState(() {
      if(_index < texts.length - 1){
      _index += 1;
      }else{
        _index = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ShowText(texts[_index]),
              ButtonControl(_changeText),
            ],
          ),
        ),
      ),
    );
  }
}