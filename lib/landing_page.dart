import 'package:flutter/material.dart';
import 'package:splash_screen/drawer.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("Creative Blog",style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(3.0),
        child: ListView(
          children: <Widget>[
            for(int i=0;i<10;i++)
            needCard(context),
          ],
        )
      ),
      drawer: Drawers(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrange,
        child: Icon(Icons.add,color: Colors.white,size: 35.0,),
        onPressed: ()
        {

        },
      ),
    );
  }

  Widget needCard(BuildContext context)
  {
    double cardsizer = MediaQuery.of(context).size.height/3;
    return Card(
      child: Container(
        color: Colors.green,
        height: cardsizer,
        padding: EdgeInsets.all(5.0),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              color: Colors.blue,
              height: cardsizer/4,
              padding: EdgeInsets.all(5.0),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
