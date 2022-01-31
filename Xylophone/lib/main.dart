import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void click(int a) {
    final player = AudioCache();
    player.play('note$a.wav');
  }

  Expanded ab({int ac, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          click(ac);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ab(ac: 1, color: Colors.yellow),
              ab(ac: 2, color: Colors.orange),
              ab(ac: 3, color: Colors.red),
              ab(ac: 4, color: Colors.green),
              ab(ac: 5, color: Colors.grey),
              ab(ac: 6, color: Colors.lightBlue),
              ab(ac: 7, color: Colors.blue),
            ],
          ),
        ),
      ),
    );
  }
}
