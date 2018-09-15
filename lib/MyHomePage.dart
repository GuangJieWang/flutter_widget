import 'package:flutter/material.dart';

/**
 * 创建作者: 王广杰
 * 创建日期: 2018/9/15 15:19
 * 类功能说明:
 */
class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyHomeWidget();
}

class _MyHomeWidget extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    //五个星星
    var ratings = new Container(
      padding: new EdgeInsets.all(20.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new Icon(Icons.star, color: Colors.black),
              new Icon(Icons.star, color: Colors.black),
              new Icon(Icons.star, color: Colors.black),
              new Icon(Icons.star, color: Colors.black),
              new Icon(Icons.star, color: Colors.black),
            ],
          ),
          new Text(
            '170 Reviews',
            style: new TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontFamily: 'Roboto',
                letterSpacing: 0.5,
                fontSize: 20.0),
          ),
        ],
      ),
    );

    var descTextStyle = new TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w800,
        fontFamily: 'Roboto',
        letterSpacing: 0.5,
        fontSize: 18.0,
        height: 2.0);

    var iconList = DefaultTextStyle.merge(
        style: descTextStyle,
        child: new Container(
          padding: new EdgeInsets.all(20.0),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new Column(
                children: <Widget>[
                  new Icon(
                    Icons.kitchen,
                    color: Colors.green[500],
                  ),
                  new Text("PREP:"),
                  new Text("25 min"),
                ],
              ),
              new Column(
                children: <Widget>[
                  new Icon(Icons.timer, color: Colors.green[500]),
                  new Text("COOK:"),
                  new Text("1 hr"),
                ],
              ),
              new Column(
                children: <Widget>[
                  new Icon(Icons.restaurant, color: Colors.green[500]),
                  new Text("FEEDS:"),
                  new Text("4-6"),
                ],
              ),
            ],
          ),
        ));

    var leftColumn = new Container(
      padding: new EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 20.0),
      child: new Column(
        children: <Widget>[ratings, iconList],
      ),
    );

    var stack = new Stack(
      alignment: const Alignment(0.6, 0.6),
      children: <Widget>[
        new CircleAvatar(
          backgroundImage: new AssetImage('assets/images/gril.jpg'),
          radius: 100.0,
        ),
        new Container(
          decoration: new BoxDecoration(color: Colors.black45),
          child: new Text(
            'Mia B}',
            style: new TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Demo"),
      ),
      body: new Center(
        child: new Container(
          margin: new EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 30.0),
          height: 600.0,
          child: new Card(
            child: new Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  width: 440.0,
                  child: leftColumn,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
