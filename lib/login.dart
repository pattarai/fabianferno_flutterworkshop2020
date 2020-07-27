import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPage();
  }
}

class _LoginPage extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text("Sign In"),
      ),
      body: Container(
        color: Colors.black87,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Text(
              "USERNAME",
              textAlign: TextAlign.center,
              style: TextStyle(
                  letterSpacing: 3,
                  color: Colors.white,
                  fontSize: 15,
                  height: 3,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: TextFormField(
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                //controller: _stackController,
                cursorColor: Colors.white,
              ),
            ),
            Text(
              "PASSWORD",
              textAlign: TextAlign.center,
              style: TextStyle(
                  letterSpacing: 3,
                  color: Colors.white,
                  fontSize: 15,
                  height: 3,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: TextFormField(
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                //controller: _stackController,
                cursorColor: Colors.white,
              ),
            ),
            Padding(padding: EdgeInsets.all(80)),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Colors.teal,
                  width: 320,
                  child: RaisedButton(
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Container(
                  color: Colors.green,
                  width: 320,
                  child: RaisedButton(
                    child: Text(
                      "Sign up",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
