import 'package:flutter/material.dart';
import 'package:splash_screen/landing_page.dart';
import 'package:splash_screen/register_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool user = true;
  bool pass = true;

  final username = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepOrange,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(25.0),
        child: ListView(
          children: <Widget>[
//logo
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage("image/logo.png"),
                  ),
                  Divider(
                    color: Colors.transparent,
                    height: 10.0,
                  ),
                  Text(
                    '" Be Creative "',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "PermanentMarker",
                        fontSize: 30.0),
                  )
                ],
              ),
            ),

            Divider(
              color: Colors.transparent,
              height: 30.0,
            ),

//username
            TextFormField(
              controller: username,
              style: new TextStyle(
                color: Colors.black,
                fontSize: 18.0,
              ),
              autocorrect: true,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(15.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black),
                ),
                labelText: "Username :",
                errorText: user == false ? "Field empty" : null,
                errorStyle: TextStyle(color: Colors.white),
                labelStyle: new TextStyle(
                  color: Colors.white,
                  fontSize: 19.0,
                ),
              ),
            ),

            Divider(
              color: Colors.transparent,
              height: 10.0,
            ),

//password
            TextFormField(
              obscureText: true,
              controller: password,
              style: new TextStyle(
                color: Colors.black,
                fontSize: 18.0,
              ),
              autocorrect: true,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(15.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black),
                ),
                labelText: "Password :",
                errorText: pass == false ? "Field empty" : null,
                errorStyle: TextStyle(color: Colors.white),
                labelStyle: new TextStyle(
                  color: Colors.white,
                  fontSize: 19.0,
                ),
              ),
            ),

            Divider(
              color: Colors.transparent,
              height:30.0,
            ),

//Login Button

            Padding(
              padding: EdgeInsets.fromLTRB(90.0, 5.0,90.0, 5.0),
              child: RaisedButton(
                
                shape: new RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                padding: EdgeInsets.fromLTRB(45.0, 12.0, 45.0, 12.0),
                child: new Text('Login',
                    style: new TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    )),
                elevation: 4.0,
                color: Colors.black,
                splashColor: Colors.red,
                onPressed: () {
                  if (username.text.isEmpty || password.text.isEmpty) {
                    if (username.text.isEmpty) {
                      setState(() {
                        user = false;
                      });
                    } else if (password.text.isEmpty) {
                      setState(() {
                        pass = false;
                      });
                    }
                  } else {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LandingPage()));
                  }
                },
              ),
            ),

            Divider(
              color: Colors.transparent,
              height: 30.0,
            ),

//About

            Container(
              child: Center(
                child:GestureDetector(
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                  Text("Don't have an Account ?",style: TextStyle(color: Colors.white),),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text("Register here",style: TextStyle(color: Colors.white,fontSize: 20.0),)
                  ],
                ),
                onTap: ()
                {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Register()));
                },
                )
              )
            )
          ],
        ),
      ),
    );
  }
}
