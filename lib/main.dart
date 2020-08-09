import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:icon_shadow/icon_shadow.dart';
import 'package:parallax_image/parallax_image.dart';
import 'read_more.dart';
import 'pushpop.dart';
import 'login.dart';
import 'drawer.dart';
//test for hamdaan
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}

class BioData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black54,
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/space.jpg'),
                    fit: BoxFit.fitHeight,
                    alignment: Alignment.topRight,
                    colorFilter: ColorFilter.mode(
                        (Colors.teal.withOpacity(0.9)), BlendMode.dstATop))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.topRight,
                            colors: [Colors.tealAccent, Colors.teal]),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(60),
                            bottomRight: Radius.circular(0)),
                        image: DecorationImage(
                            image: AssetImage('images/waretpeace.jpg'),
                            fit: BoxFit.fitHeight,
                            alignment: Alignment.topCenter,
                            colorFilter: ColorFilter.mode(
                                (Colors.teal.withOpacity(0.3)),
                                BlendMode.dstATop))),
                    height: 300,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => LoginPage()));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            "Skywalker's",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                height: 0.5,
                                fontSize: 70,
                                color: Colors.black,
                                fontFamily: "BillionDreams"),
                          ),
                          Text(
                            "SCRIPT",
                            style: TextStyle(
                                fontSize: 15,
                                letterSpacing: 6,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Raleway"),
                          ),
                        ],
                      ),
                    )),
                Padding(padding: EdgeInsets.all(10)),
                Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(0),
                          topRight: Radius.circular(60),
                          bottomLeft: Radius.circular(30)),
                      gradient: LinearGradient(
                          end: Alignment.centerLeft,
                          begin: Alignment.topRight,
                          colors: [Colors.tealAccent, Colors.teal]),
                    ),
                    child: Row(
                      children: <Widget>[
                        Flexible(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                launch(
                                    "https://fabianferno.wordpress.com/2019/06/29/deception/");
                              },
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 12),
                                child: Container(
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      gradient: LinearGradient(colors: [
                                        Colors.black45,
                                        Colors.black87
                                      ])),
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        "THE DECEPTION",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "Raleway",
                                            letterSpacing: 1,
                                            color: Colors.white,
                                            fontSize: 20),
                                      ),
                                      Padding(padding: EdgeInsets.all(10)),
                                      Text(
                                        "The World isn't what you think it is.",
                                        style: TextStyle(
                                            fontFamily: "Raleway",
                                            letterSpacing: 1,
                                            color: Colors.white,
                                            fontSize: 15),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                launch(
                                    "https://fabianferno.wordpress.com/2020/06/22/the-crimson-cry/");
                              },
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 12),
                                child: Container(
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      gradient: LinearGradient(colors: [
                                        Colors.black45,
                                        Colors.black87,
                                      ])),
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        "THE CRIMSON CRY",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "Raleway",
                                            letterSpacing: 1,
                                            color: Colors.white,
                                            fontSize: 20),
                                      ),
                                      Padding(padding: EdgeInsets.all(10)),
                                      Text(
                                        "I heard a cry. The grim of my world. What am I doing here?",
                                        style: TextStyle(
                                            fontFamily: "Raleway",
                                            letterSpacing: 1,
                                            color: Colors.white,
                                            fontSize: 15),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                launch(
                                    "https://fabianferno.wordpress.com/2020/02/28/the-sound-of-silence/");
                              },
                              child: Container(
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    gradient: LinearGradient(colors: [
                                      Colors.black45,
                                      Colors.black87,
                                    ])),
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      "SOUND OF SILENCE",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Raleway",
                                          letterSpacing: 1,
                                          color: Colors.white,
                                          fontSize: 20),
                                    ),
                                    Padding(padding: EdgeInsets.all(10)),
                                    Text(
                                      "Complexities with subtle spark of life dust. That’s what we are.",
                                      style: TextStyle(
                                          fontFamily: "Raleway",
                                          letterSpacing: 1,
                                          color: Colors.white,
                                          fontSize: 15),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )),
                        Padding(padding: EdgeInsets.all(8)),
                        Flexible(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(60),
                                      topLeft: Radius.circular(15),
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15)),
                                  gradient: LinearGradient(colors: [
                                    Colors.black45,
                                    Colors.black87
                                  ])),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Icon(
                                    Icons.keyboard_tab,
                                    color: Colors.tealAccent,
                                    size: 80,
                                    semanticLabel:
                                        'Text to announce in accessibility modes',
                                  ),
                                  Padding(padding: EdgeInsets.all(5)),
                                  Text(
                                    "Your surroundings touch you. And some touch you deeply. The sudden ecstasy of fulfillment can be felt anytime and anywhere.",
                                    style: TextStyle(
                                      height: 1.36,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Raleway",
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                    textAlign: TextAlign.right,
                                  ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(5)),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Stacker()));
                              },
                              //test1
                              child: Container(
                                width: 180,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Text(
                                      "Click here.",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 20),
                                    ),
                                  ],
                                ),
                                height: 140,
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    gradient: LinearGradient(colors: [
                                      Colors.black54,
                                      Colors.black87,
                                    ]),
                                    image: DecorationImage(
                                        image: AssetImage('images/joker.jpg'),
                                        fit: BoxFit.fitWidth,
                                        alignment: Alignment.center,
                                        colorFilter: ColorFilter.mode(
                                            (Colors.teal.withOpacity(0.3)),
                                            BlendMode.dstATop))),
                              ),
                            ),
                          ],
                        ))
                      ],
                    )),
                Padding(padding: EdgeInsets.all(10)),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        end: Alignment.bottomLeft,
                        begin: Alignment.topRight,
                        colors: [Colors.tealAccent, Colors.teal]),
                  ),
                  child: new Container(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    constraints: const BoxConstraints(maxHeight: 250.0),
                    child: new ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: _buildHorizontalChild,
                    ),
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(top: 20, bottom: 10, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Stack(children: <Widget>[
                          Positioned(
                              left: 6.0,
                              top: 8.0,
                              child: Icon(
                                Icons.edit,
                                color: Colors.teal,
                                size: 200,
                              )),
                          Icon(Icons.edit, color: Colors.tealAccent, size: 200),
                        ]),
                        Text(
                          "I write blog.",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                  blurRadius: 0.0,
                                  color: Colors.teal,
                                  offset: Offset(4, 4),
                                ),
                              ],
                              fontFamily: "Raleway",
                              fontSize: 80,
                              color: Colors.tealAccent),
                        ),
                      ],
                    )),
                Container(
                    padding: EdgeInsets.all(30),
                    child: Text(
                        "Get the full content at \nfabianferno.wordpress.com",
                        textAlign: TextAlign.right,
                        style: TextStyle(color: Colors.grey, fontSize: 18)))
              ],
            ),
          ),
        ));
  }

  Widget _buildHorizontalChild(BuildContext context, int index) {
    index++;
    if (index > 7) return null;
    return new Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: new ParallaxImage(
        extent: 120.0,
        image: new ExactAssetImage(
          'images/img$index.jpg',
        ),
      ),
    );
  }
}
