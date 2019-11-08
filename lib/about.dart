import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              color: Colors.deepOrange,
            ),
            Container(
              height: 150.0,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: <Widget>[
                  ClipPath(
                    clipper: OvalBottomBorderClipper(),
                    child: Container(
                      height: 90,
                      color: Colors.deepOrange,
                    ),
                  ),
                  Center(
                    child: CircleAvatar(
                      maxRadius: 55.0,
                      backgroundColor: Colors.white,
                    ),
                  ),
                  Center(
                    child: CircleAvatar(
                      maxRadius: 45.0,
                      backgroundImage: AssetImage("image/logo.png"),
                    ),
                  )
                ],
              ),
            ),
            Text(
              "Welcome onboard",
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
            Divider(
              color: Colors.transparent,
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
