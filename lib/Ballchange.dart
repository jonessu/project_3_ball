import 'package:flutter/material.dart';
import 'dart:math';

class Ballchange extends StatefulWidget {
  @override
  _BallchangeState createState() => _BallchangeState();
}

class _BallchangeState extends State<Ballchange> {
  int ballname;
  @override
  void initState() {
    super.initState();
    ballname = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      appBar: AppBar(
        title: Text("Ask Me Anything"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: FlatButton(
          onPressed: () {
            setState(() {
              ballname = (Random().nextInt(5) + 1);
              print(ballname);
            });
          },
          child: Image(
            image: AssetImage('images/ball$ballname.png'),
          ),
        ),
      ),
    );
  }
}
