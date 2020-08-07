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
      body: Container(
        constraints: BoxConstraints.expand(),
        color: Colors.black87,
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: TextFormField(
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    icon: Icon(Icons.supervisor_account,color: Colors.tealAccent,),
                    labelText: "Username",
                    labelStyle: TextStyle(color: Colors.white,fontSize: 16),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.tealAccent,width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.tealAccent, width: 2),
                    ),
                    ),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.right,
                  //controller: _stackController,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: TextFormField(
                  obscureText: true,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    icon: Icon(Icons.vpn_key,color: Colors.tealAccent,),
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.white,fontSize: 16),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.tealAccent,width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.tealAccent, width: 2),
                    ),
                    //enabledBorder: OutlineInputBorder(
                    //borderSide: BorderSide(color: Colors.red, width: 5.0),
                  ),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.right,
                  //controller: _stackController,
                ),
              ),
              Padding(padding: EdgeInsets.all(130)),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 50,
                    padding: EdgeInsets.only(right: 10),
                    child: RaisedButton(
                      color: Colors.tealAccent,
                      onPressed: () {
                        print("Logged in");
                      },
                      child: Text(
                        "LOGIN",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    child: RaisedButton(
                      color: Color(0xffffffff),
                      onPressed: () {
                        print("Signing up");
                      },
                      child: Text(
                        "SIGNUP",
                        style: TextStyle(color: Colors.black87),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
