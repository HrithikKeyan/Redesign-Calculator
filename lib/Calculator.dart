import 'package:flutter/material.dart';

class CalcHomePage extends StatefulWidget {
  @override
  State createState() => CalcHomePageState();
}

class CalcHomePageState extends State<CalcHomePage> {
  var num1, num2, total;

  TextEditingController data1 = new TextEditingController(text: "");
  TextEditingController data2 = new TextEditingController(text: "");

  void doAddition() {
    setState(() {
      num1 = int.parse(data1.text);
      num2 = int.parse(data2.text);
      total = num1 + num2;
    });
  }

  void doSubraction() {
    setState(() {
      num1 = int.parse(data1.text);
      num2 = int.parse(data2.text);
      total = num1 - num2;
    });
  }

  void doMultiplication() {
    setState(() {
      num1 = int.parse(data1.text);
      num2 = int.parse(data2.text);

      total = num1 * num2;
    });
  }

  void doDivision() {
    setState(() {
      num1 = int.parse(data1.text);
      num2 = int.parse(data2.text);

      total = num1 ~/ num2;
    });
  }

  void doClear() {
    setState(() {
      data1.text = "";
      data2.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
        centerTitle: true,
      ),
      body: new Container(
          padding: EdgeInsets.all(40.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                "Answer is :  $total",
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.red,
                ),
              ),
              new TextField(
                keyboardType: new TextInputType.numberWithOptions(),
                controller: data1,
                decoration: new InputDecoration(
                  hintText: "Number 1",
                ),
              ),
              new Padding(padding: const EdgeInsets.only(top: 20.0)),
              new TextField(
                keyboardType: new TextInputType.numberWithOptions(),
                controller: data2,
                decoration: new InputDecoration(hintText: "Number 2"),
              ),
              new Padding(padding: const EdgeInsets.only(top: 25.0)),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new OutlineButton(
                    onPressed: doAddition,
                    child: new Text("Plus"),
                    textColor: Color(0xFF535461),
                    splashColor: Colors.red,
                    color: Colors.red,
                  ),
                  new OutlineButton(
                    onPressed: doSubraction,
                    color: Colors.red,
                    textColor: Color(0xFF535461),
                    splashColor: Colors.red,
                    child: new Text("Minus"),
                  ),
                ],
              ),
              new Padding(padding: const EdgeInsets.only(top: 10.0)),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new OutlineButton(
                    color: Colors.red,
                    splashColor: Colors.red,
                    child: new Text("Multiply"),
                    textColor: Color(0xFF535461),
                    onPressed: doMultiplication,
                  ),
                  new OutlineButton(
                    color: Colors.red,
                    splashColor: Colors.red,
                    textColor: Color(0xFF535461),
                    child: new Text("Divide"),
                    onPressed: doDivision,
                  ),
                ],
              ),
              new Padding(padding: EdgeInsets.only(top: 20.0)),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new OutlineButton(
                    onPressed: doClear,
                    splashColor: Colors.red,
                    textColor: Color(0xFF535461),
                    child: new Text("Clear"),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
