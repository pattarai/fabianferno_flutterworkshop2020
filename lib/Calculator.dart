import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'clicky_button.dart';
import 'dart:math' as math;
import 'package:math_expressions/math_expressions.dart';

String _equation = "0";
String _result = "0";

class Calculator extends StatelessWidget {
  final Overlay overlay = Overlay();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BasicCalc(),
    );
  }
}

class BasicCalc extends StatefulWidget {
  @override
  _BasicCalcState createState() => _BasicCalcState();
}

class _BasicCalcState extends State<BasicCalc> {
  Parser p = Parser();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black87,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    child: Text(
                      _result,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.tealAccent,
                          fontSize: 60,
                          fontFamily: "BebasNeue",
                          letterSpacing: 3),
                    ),
                    padding: EdgeInsets.only(right: 20, top: 15),
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Container(
                    width: 320,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(0)),
                      color: Colors.teal,
                    ),
                    child: Text(
                      _equation,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.bold,
                          letterSpacing: 3),
                    ),
                    padding: EdgeInsets.all(20),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  color: Colors.black54,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: 120,
                        padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
                        child: ClickyButton(
                          child: Text(
                            "COMPUTE".toUpperCase(),
                            style: TextStyle(
                                letterSpacing: 5,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                          color: Colors.teal,
                          onPressed: () {
                            Expression exp = Parser().parse(_equation);
                            String _result = exp.evaluate(EvaluationType.REAL,null).toString();
                            setState(() {});
                          },
                      ),),
                      Container(
                        height: 120,
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: ClickyButton(
                          child: Text(
                            "clear".toUpperCase(),
                            style: TextStyle(
                                letterSpacing: 5,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                          color: Colors.teal,
                          onPressed: () {_equation="0";setState(() {});
                          },
                        ),
                      ),
                      Container(
                        height: 120,
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: ClickyButton(
                          child: Text(
                            "exit".toUpperCase(),
                            style: TextStyle(
                                letterSpacing: 5,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                          color: Colors.teal,
                          onPressed: () {
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.all(25),
                child: Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            child: FloatingActionButton(
                              onPressed: () {
                                _equation += "7";
                                setState(() {});
                              },
                              splashColor: Colors.black,
                              backgroundColor: Colors.tealAccent,
                              child: Text(
                                '7'.toUpperCase(),
                                style: TextStyle(
                                    letterSpacing: 5,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: FloatingActionButton(
                              onPressed: () {
                                _equation += "8";
                                setState(() {});
                              },
                              splashColor: Colors.black,
                              backgroundColor: Colors.tealAccent,
                              child: Text(
                                '8'.toUpperCase(),
                                style: TextStyle(
                                    letterSpacing: 5,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: FloatingActionButton(
                              onPressed: () {
                                _equation += "9";
                                setState(() {});
                              },
                              splashColor: Colors.black,
                              backgroundColor: Colors.tealAccent,
                              child: Text(
                                '9'.toUpperCase(),
                                style: TextStyle(
                                    letterSpacing: 5,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: FloatingActionButton(
                              onPressed: () {
                                _equation += "*";
                                setState(() {});
                              },
                              splashColor: Colors.black,
                              backgroundColor: Colors.tealAccent,
                              child: Text(
                                'X'.toUpperCase(),
                                style: TextStyle(
                                    letterSpacing: 5,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            child: FloatingActionButton(
                              onPressed: () {
                                _equation += "4";
                                setState(() {});
                              },
                              splashColor: Colors.black,
                              backgroundColor: Colors.tealAccent,
                              child: Text(
                                '4'.toUpperCase(),
                                style: TextStyle(
                                    letterSpacing: 5,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: FloatingActionButton(
                              onPressed: () {
                                _equation += "5";
                                setState(() {});
                              },
                              splashColor: Colors.black,
                              backgroundColor: Colors.tealAccent,
                              child: Text(
                                '5'.toUpperCase(),
                                style: TextStyle(
                                    letterSpacing: 5,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: FloatingActionButton(
                              onPressed: () {
                                _equation += "6";
                                setState(() {});
                              },
                              splashColor: Colors.black,
                              backgroundColor: Colors.tealAccent,
                              child: Text(
                                '6'.toUpperCase(),
                                style: TextStyle(
                                    letterSpacing: 5,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: FloatingActionButton(
                              onPressed: () {
                                _equation += "-";
                                setState(() {});
                              },
                              splashColor: Colors.black,
                              backgroundColor: Colors.tealAccent,
                              child: Text(
                                '-'.toUpperCase(),
                                style: TextStyle(
                                    letterSpacing: 5,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            child: FloatingActionButton(
                              onPressed: () {
                                _equation += "1";
                                setState(() {});
                              },
                              splashColor: Colors.black,
                              backgroundColor: Colors.tealAccent,
                              child: Text(
                                '1'.toUpperCase(),
                                style: TextStyle(
                                    letterSpacing: 5,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: FloatingActionButton(
                              onPressed: () {
                                _equation += "2";
                                setState(() {});
                              },
                              splashColor: Colors.black,
                              backgroundColor: Colors.tealAccent,
                              child: Text(
                                '2'.toUpperCase(),
                                style: TextStyle(
                                    letterSpacing: 5,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: FloatingActionButton(
                              onPressed: () {
                                _equation += "3";
                                setState(() {});
                              },
                              splashColor: Colors.black,
                              backgroundColor: Colors.tealAccent,
                              child: Text(
                                '3'.toUpperCase(),
                                style: TextStyle(
                                    letterSpacing: 5,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: FloatingActionButton(
                              onPressed: () {
                                _equation += "+";
                                setState(() {});
                              },
                              splashColor: Colors.black,
                              backgroundColor: Colors.tealAccent,
                              child: Text(
                                '+'.toUpperCase(),
                                style: TextStyle(
                                    letterSpacing: 5,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            child: FloatingActionButton(
                              onPressed: () {
                                _equation += "%";
                                setState(() {});
                              },
                              splashColor: Colors.black,
                              backgroundColor: Colors.tealAccent,
                              child: Text(
                                '%'.toUpperCase(),
                                style: TextStyle(
                                    letterSpacing: 5,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: FloatingActionButton(
                              onPressed: () {
                                _equation += "0";
                                setState(() {});
                              },
                              splashColor: Colors.black,
                              backgroundColor: Colors.tealAccent,
                              child: Text(
                                '0'.toUpperCase(),
                                style: TextStyle(
                                    letterSpacing: 5,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: FloatingActionButton(
                              onPressed: () {
                                _equation += ".";
                                setState(() {});
                              },
                              splashColor: Colors.black,
                              backgroundColor: Colors.tealAccent,
                              child: Text(
                                '.'.toUpperCase(),
                                style: TextStyle(
                                    letterSpacing: 5,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: FloatingActionButton(
                              onPressed: () {
                                _equation += "/";
                                setState(() {});
                              },
                              splashColor: Colors.black,
                              backgroundColor: Colors.tealAccent,
                              child: Text(
                                '/'.toUpperCase(),
                                style: TextStyle(
                                    letterSpacing: 5,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 15),
                child: Text(
                  "©Created by Super Skywalker™", textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.tealAccent),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}