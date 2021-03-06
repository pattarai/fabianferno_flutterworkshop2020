import 'package:flutter/material.dart';

class Stacker extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Stacker();
  }
}

class _Stacker extends State<Stacker> {
  TextEditingController _stackController = new TextEditingController();

  List<int> stack = new List<int>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black87,
        height: 520,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Stack em up - Numbers dood!",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Colors.tealAccent),
                ),
              ),
              Container(
                color: Color(0xff404040),
                padding: EdgeInsets.all(25),
                child: TextFormField(
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                  controller: _stackController,
                  cursorColor: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
              ),
              Text(
                "THE STACK",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    height: 3,
                    fontWeight: FontWeight.bold),
              ),
              Column(
                children: returnStackElements(),
              ),
              Padding(
                padding: EdgeInsets.all(10),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 320,
                    child: RaisedButton(
                        color: Colors.tealAccent,
                        child: Text("PUSH"),
                        onPressed: () {
                          stack.add(int.parse(_stackController.text));
                          print(stack.toString());
                          setState(() {});
                        }),
                  ),
                  Container(
                    width: 320,
                    child: RaisedButton(
                        color: Colors.white,
                        child: Text("POP"),
                        onPressed: () {
                          try {
                            stack.removeLast();
                          } on RangeError catch (e) {
                            print("Underflow detected!");
                          }
                          print(stack.toString());
                          setState(() {});
                        }),
                  ),
                  Padding(padding: EdgeInsets.all(30))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> returnStackElements() {
    List<Widget> elementsToReturn = [];
    stack.forEach((element) {
      elementsToReturn.add(Text(element.toString(),style: TextStyle(color: Colors.white),));
    });
    return elementsToReturn;
  }
}
