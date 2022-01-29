import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          centerTitle: false,
          title: Text(
            'Dicee',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.red,
          elevation: 0,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int lefdice = 1;
  int Ritdice = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    lefdice = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$lefdice.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    Ritdice = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$Ritdice.png'),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.green,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
          child: Text('Roll Dice'),
          onPressed: () {
            setState(() {
              lefdice = Random().nextInt(6) + 1;
              Ritdice = Random().nextInt(6) + 1;
            });
          },
        ),
      ],
    );
  }
}
