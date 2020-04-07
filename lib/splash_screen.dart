import 'dart:async';

import 'package:calculator/Calculator.dart';
import 'package:flutter/material.dart';
import 'Calculator.dart';

class SplashScreen extends StatefulWidget {
  @override
  State createState() => SplashState();
}

class SplashState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startingTime();
  }

  startingTime() async {
    var duration = Duration(seconds: 5);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => CalcHomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: Center(
        child: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/images/calculator_logo.png",
              height: 90.0,
            ),
            Padding(padding: const EdgeInsets.only(top: 20.0)),
            new Text(
              "Calculator Application",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
            ),
            new Padding(padding: const EdgeInsets.only(top: 20.0)),
            new CircularProgressIndicator(
              backgroundColor: Colors.blue[200],
              
              strokeWidth: 3.5,
            ),
          ],
        )),
      ),
    );
  }
}
