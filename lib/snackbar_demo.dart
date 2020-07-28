import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class SnackbarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SnackbarDemo();
  }
}

class _SnackbarDemo extends State<SnackbarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black87,
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            RaisedButton(
              child: Text("Show a SnackBar"),
              onPressed: () {
                var snackbar = SnackBar(
                    backgroundColor: Color(0xff0A6A6D),
                    content: Text("You clicked the Button!"));
                Scaffold.of(context).showSnackBar(snackbar);
              },
            ),
            RaisedButton(
              child: Text("Show a Toast"),
              onPressed: () {
                Toast.show("Toast plugin app", context,
                    duration: Toast.LENGTH_LONG,
                    gravity: Toast.BOTTOM,
                    backgroundColor: Color(0xff0A6A6D));
              },
            ),
          ],
        ),
      ),
    );
  }
}
