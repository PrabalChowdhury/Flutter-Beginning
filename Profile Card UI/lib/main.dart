import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(Valor());
}

class Valor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(
                    'https://image.freepik.com/free-psd/logo-mockup-grey-wall_35913-2122.jpg'),
              ),
              Text(
                'Prabal Chowdhury',
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Neonderthaw',
                    fontWeight: FontWeight.bold,
                    color: Colors.amber),
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
                width: 200,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.black,
                  ),
                  title: Text(
                    '01746383726',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black54,
                    ),
                  ),
                ),
                // child: Row(
                //   children: <Widget>[
                //     Icon(
                //       Icons.phone,
                //       color: Colors.black,
                //     ),
                //     SizedBox(
                //       width: 20,
                //     ),
                //     Text(
                //       '+8801746383726',
                //       style: TextStyle(
                //         color: Colors.teal.shade900,
                //         fontSize: 17,
                //       ),
                //     ),
                //   ],
                // ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.black,
                  ),
                  title: Text(
                    'prabal.k.chowdhury@gmail.com',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black54,
                    ),
                  ),
                ),
                // child: Row(
                //   children: <Widget>[
                //     Icon(
                //       Icons.email,
                //       color: Colors.black,
                //     ),
                //     SizedBox(
                //       width: 14,
                //     ),
                //     Text(
                //       'prabal.k.chowdhury@gmail.com',
                //       style: TextStyle(
                //         fontSize: 17,
                //         color: Colors.teal.shade900,
                //         fontFamily: 'Source Sans Pro',
                //       ),
                //     )
                //   ],
                // ),
              )
            ],
          ),
          // child: Row(
          //   children: <Widget>[
          //     Container(width: 100, height: double.infinity, color: Colors.red),
          //     SizedBox(
          //       width: 55,
          //     ),
          //     Container(
          //       height: 200.0,
          //       width: 100.0,
          //       color: Colors.green,
          //       child: Column(children: <Widget>[
          //         Container(width: 100, height: 100, color: Colors.yellow),
          //       ]),
          //     ),
          //     SizedBox(
          //       width: 55,
          //     ),
          //     Container(
          //       width: 100,
          //       height: double.infinity,
          //       color: Colors.blue,
          //     ),
          //   ],
          // ),
        ),
      ),
    );
  }
}
