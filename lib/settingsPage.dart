import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color.fromRGBO(242, 242, 242, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              color: Colors.white,
              child: ListTile(
                title: Text("Your Profile"),
                leading: Icon(
                  Icons.person,
                  color: Colors.purple,
                ),
              ),
            ),
            Divider(
              color: Colors.transparent,
              height: 20.0,
            ),
            Container(
              color: Colors.white,
              child: ListTile(
                title: Text("DarkMode"),
                leading: Icon(
                  Icons.monochrome_photos,
                  color: Colors.black,
                ),
              ),
            ),
            Divider(
              color: Colors.transparent,
              height: 20.0,
            ),
            Container(
              color: Colors.white,
              child: ListTile(
                title: Text("Logout"),
                leading: Icon(
                  Icons.data_usage,
                  color: Colors.red,
                ),
              ),
            ),
            Divider(
              color: Colors.transparent,
              height: 20.0,
            ),
            Container(
              color: Colors.white,
              child: ListTile(
                title: Text("About"),
                leading: Icon(
                  Icons.people,
                  color: Colors.blue,
                ),
              ),
            ),
            Divider(
              color: Colors.transparent,
              height: 20.0,
            ),
            Container(
              color: Colors.white,
              child: ListTile(
                title: Text("Version 1.1.0"),
                leading: Icon(
                  Icons.verified_user,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
