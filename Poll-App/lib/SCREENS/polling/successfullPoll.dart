import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multiplepolls/SCREENS/wrapper.dart';

class SuccessFUllPoll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 3),
        () => Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => Wrapper()), (route) => false)
    );
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[100],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
                child: Text(
                  'Your Vote Has been Recorded Sucessfully !!!',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                    fontSize: 45.0,
                    color: Colors.indigo,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
                child: Icon(
                  Icons.mood,
                  color: Colors.indigoAccent,
                  size: 200.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
