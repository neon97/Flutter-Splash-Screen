import 'package:flutter/material.dart';
import 'package:splash_screen/login_page.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepOrange,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20.0),
        child: ListView(
          
          children: <Widget>[
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage("image/logo.png"),
                  ),
                ],
              ),
            ),
            TextFormField(
              controller: name,
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
                labelText: "Name :",
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
              height: 20.0,
            ),

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
              height: 20.0,
            ),



            TextFormField(
               keyboardType: TextInputType.emailAddress,
              controller: email,
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
                labelText: "Email :",
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
              height: 20.0,
            ),



            TextFormField(
              keyboardType: TextInputType.number,
              
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
                labelText: "Mobile No :",
               
                errorStyle: TextStyle(color: Colors.white),
                labelStyle: new TextStyle(
                  color: Colors.white,
                  fontSize: 19.0,
                ),
              ),
            ),
            Divider(
              color: Colors.transparent,
              height: 20.0,
            ),


            Padding(
              padding: EdgeInsets.fromLTRB(80.0, 5.0,80.0, 5.0),
              child: RaisedButton(
                shape: new RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                padding: EdgeInsets.fromLTRB(45.0, 12.0, 45.0, 12.0),
                child: new Text('Register',
                    style: new TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    )),
                elevation: 4.0,
                color: Colors.black,
                splashColor: Colors.red,
                onPressed: () {
                  if(name.text.isEmpty || username.text.isEmpty || email.text.isEmpty)
                  {
                    setState(() {
                      user = false;
                    });
                  }else{
                     Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  }
                  
                }
              ),
            ),



          ],
        ),
      ),
    );
  }

  final name = TextEditingController();
  final username = TextEditingController();
  final email = TextEditingController();
    bool user = true;

}
