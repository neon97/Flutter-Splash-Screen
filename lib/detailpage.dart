import 'package:flutter/material.dart';
import 'package:splash_screen/list.dart';

class Detail extends StatefulWidget {
  int index;
  Detail({
    this.index,
  });
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    double widths = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: widths,
        child: ListView(
          children: <Widget>[
            Container(
              height: 230.0,
              width: MediaQuery.of(context).size.width,
              child: FadeInImage(
                image: NetworkImage(blogimage[widget.index]),
                fit: BoxFit.fill,
                placeholder: AssetImage("image/logo.png"),
              ),
            ),
            Container(
              height: 50.0,
              width: widths,
              color: Colors.deepOrange,
              child: Center(
                child: Text(
                  blogname[widget.index],
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Divider(
              color: Colors.transparent,
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0,0,20.0,0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: AssetImage("image/logo.png"),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "Anonymous #*",
                        style: TextStyle(
                            fontSize: 17.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.transparent,
                    height: 20.0,
                  ),
               Text("Description..",style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold),),

               Divider(
                 color: Colors.transparent,
                 height: 10.0,
               ),
               
               Text(blogdetails[0])
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
