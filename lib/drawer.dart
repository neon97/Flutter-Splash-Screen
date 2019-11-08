import 'package:flutter/material.dart';
import 'package:splash_screen/about.dart';
import 'package:splash_screen/landing_page.dart';
import 'package:splash_screen/settingsPage.dart';
import 'package:splash_screen/trendingpage.dart';

class Drawers extends StatefulWidget {
  @override
  _DrawersState createState() => _DrawersState();
}

class _DrawersState extends State<Drawers> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(
              color: Colors.deepOrange,
              image: DecorationImage(image: AssetImage("image/logo.png"))),
          accountEmail: Text(
            "flutter.dev@gmail.com",
            style: TextStyle(color: Colors.white),
          ),
          accountName: Text(
            "Flutteroid",
            style: TextStyle(color: Colors.white, fontSize: 18.0),
          ),
          currentAccountPicture: CircleAvatar(
            backgroundImage: AssetImage("image/logo.png"),
          ),
        ),
        ListTile(
          title: Text("Homepage"),
          trailing: Icon(Icons.home),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => LandingPage()));
          },
        ),
        ListTile(
          title: Text("Trending's"),
          trailing: Icon(Icons.trending_up),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => TrendingPage()));
          },
        ),
        ListTile(
          title: Text("Setting's"),
          trailing: Icon(Icons.settings),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Settings()));
          },
        ),
        ListTile(
          title: Text("About"),
          trailing: Icon(Icons.people),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => About()));
          },
        ),
      ],
    ));
  }
}
