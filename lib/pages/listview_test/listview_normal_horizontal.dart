import 'package:flutter/material.dart';

class ListViewNormalHorizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("ListView Normal Horizontal"),
          centerTitle: true,
        ),
        body: _body(),
      );
}

Widget _body() => Container(
      color: Colors.amber,
      child: Container(
        height: 500,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            getContent(Colors.red),
            getContent(Colors.orange),
            getContent(Colors.yellow),
            getContent(Colors.green),
            getContent(Colors.lightBlueAccent),
            getContent(Colors.blueAccent),
            getContent(Colors.purple),
            getContent(Colors.deepPurple),
          ],
        ),
      ),
    );

Widget getContent(Color bgColor) => Container(
      color: bgColor,
      width: 150,
    );
