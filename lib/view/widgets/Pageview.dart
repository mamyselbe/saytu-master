import 'package:flutter/material.dart';

class ChoicePage extends StatefulWidget {
  const ChoicePage({Key? key}) : super(key: key);

  @override
  State<ChoicePage> createState() => _ChoicePageState();
}

class _ChoicePageState extends State<ChoicePage> {
  int _numberOfWeeks = 1;

  void _incrementWeeks() {
    setState(() {
      _numberOfWeeks++;
    });
  }

  void _decrementWeeks() {
    setState(() {
      if (_numberOfWeeks > 1) {
        _numberOfWeeks--;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text(
        'Number of weeks:',
        style: TextStyle(fontSize: 24),
    ),
    Text(
    '$_numberOfWeeks',
    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    IconButton(
    icon: Icon(Icons.remove),
    onPressed: _decrementWeeks,
    ),
    IconButton(
    icon: Icon(Icons.add),
    onPressed: _incrementWeeks,
    ),
    ],
    ),
        ],
        ),
        ),
    );
  }
}

