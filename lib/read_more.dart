import 'package:flutter/material.dart';
import 'package:hello_world_flutter/main.dart';

class ReadMore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "Read more at",
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 28, color: Colors.teal),
            ),
            Text(
              "fabianferno.wordpress.com",
              textAlign: TextAlign.right,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 29,
                  color: Colors.teal),
            ),
            Padding(padding: EdgeInsets.all(50)),
            RaisedButton(
                color: Colors.teal,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "Go Back",
                      style: TextStyle(color: Colors.white, fontSize: 28),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BioData()));
                })
          ],
        ),
      ),
    );
  }
}
