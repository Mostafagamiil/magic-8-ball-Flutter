import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          title: Center(child: Text('M  A  G  I  C   8   BALL')),
          backgroundColor: Colors.black87,
        ),
        body: BallPage(),
      )),
    );

class BallPage extends StatefulWidget {
  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  @override
  int BallAnswer = 1;
  Widget build(BuildContext context) {
    return Column(

        children: [
          Text('Ask Me Any Question ?' , style: TextStyle(fontSize: 30.0,color: Colors.white60,),

          ),
          Expanded(
              child: TextButton(style: TextButton.styleFrom(
                primary: Colors.black12,
              ),
                  onPressed: () {
                    setState(() {
                      BallAnswer = Random().nextInt(5)+1;
                    });

                  },
                  child: Image.asset('images/ball$BallAnswer.png'))),
        ],
    );
  }
}
