import 'package:flutter/material.dart';
import 'package:splash_screen/detailpage.dart';
import 'package:splash_screen/drawer.dart';
import 'package:splash_screen/list.dart';

class TrendingPage extends StatefulWidget {
  @override
  _TrendingPageState createState() => _TrendingPageState();
}

class _TrendingPageState extends State<TrendingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          "Trending's",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(3.0),
          child: ListView(
            children: <Widget>[
              for (int i = 0; i < 9; i++) needCard(context, i),
            ],
          )),
      drawer: Drawers(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrange,
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 35.0,
        ),
        onPressed: () {},
      ),
    );
  }

  Widget needCard(BuildContext context, int index) {
    double cardsizer = MediaQuery.of(context).size.height / 3;
    return GestureDetector(
      child: Card(
        elevation: 5.0,
        child: Container(
          // color: Colors.green,
          height: cardsizer,
          // padding: EdgeInsets.all(5.0),
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height: cardsizer / 1.35,
                width: MediaQuery.of(context).size.width,
                child: FadeInImage(
                  image: NetworkImage(blogimage[index]),
                  placeholder: AssetImage("image/logo.png"),
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                height: cardsizer / 4,
                padding: EdgeInsets.fromLTRB(10.0, 5.0, 0, 5.0),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          blogname[index],
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.transparent,
                      height: 5.0,
                    ),
                    Row(
                      children: <Widget>[
                        for (int i = 0; i < 30; i++) Text(blogdetails[0][i]),
                        Text("....."),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "Continue Reading...",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Detail(
                  index: index,
                )));
      },
    );
  }

  int hund = 100;
}
