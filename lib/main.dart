import 'dart:async';
import 'login_page.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: App(),
    theme: ThemeData(
      fontFamily: "Exo2",
      primaryColor: Colors.white,
    ),
    debugShowCheckedModeBanner: false,
  ));
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  startTime() async {
    var _duration = new Duration(seconds: 5);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => LoginPage()));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepOrange,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage("image/logo.png"),
            ),
            Text('" Be Creative "',style: TextStyle(color: Colors.white,fontFamily: "PermanentMarker",fontSize: 40.0),)
          ],
        ),
      ),
    );
  }
}
