import 'package:flutter/material.dart';

class LPButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(
            "Button Demo",
            style: TextStyle(color: Colors.brown),
          ),
          centerTitle: true,
        ),
        body: _MyHome(),
      );
}

void press() {}

class _MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        child: ListView(
          padding: EdgeInsets.all(20.0),
          children: <Widget>[
            RaisedButton(
              onPressed: press,
              child: Text("Normal RaisedButton"),
            ),
            RaisedButton(
              onPressed: press,
              color: Colors.red,
              textColor: Colors.green,
              child: Text("Change Color RaisedButton"),
            ),
            Row(
              children: <Widget>[
                Container(
                  height: 80.0,
                  width: 120.0,
                  child: RaisedButton(
                    onPressed: press,
                    color: Colors.blue,
                    textColor: Colors.grey,
                    child: Text("Change Width Height RaisedButton"),
                  ),
                )
              ],
            ),
            RaisedButton(
              onPressed: press,
              color: Colors.orange,
              textColor: Colors.black,
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: BorderSide(color: Colors.deepPurpleAccent)),
              child: Text("Circle Border RaisedButton"),
            ),
            Container(
              height: 100.0,
              width: 100.0,
              child: RaisedButton(
                onPressed: press,
                color: Colors.orange,
                textColor: Colors.black,
                shape: CircleBorder(side: BorderSide(color: Colors.green)),
                child: Text("Circle Border"),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 100.0,
              width: 100.0,
              child: RaisedButton(
                splashColor: Colors.red,
                onPressed: press,
                textColor: Colors.white,
                child: Text("Try LongPress"),
                color: Colors.deepPurpleAccent,
                shape: CircleBorder(),
              ),
            ),
            IconButton(
              onPressed: press,
              icon: Icon(Icons.offline_bolt),
            ),
            RaisedButton.icon(
                onPressed: press, icon: Icon(Icons.map), label: Text("label")),
            FlatButton(
              onPressed: press,
              child: Text("FlatButton"),
            ),
            OutlineButton(
              onPressed: press,
              child: Text("OutLineButton"),
            ),
            Container(
              width: 60.0,
              height: 60.0,
              child: RaisedButton(
                color: Colors.green,
                onPressed: press,
                shape: CircleBorder(),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      );
}
