import 'package:flutter/material.dart';

class ListViewNormalVertical extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("ListView Normal Vertical"),
          centerTitle: true,
        ),
        body: _body(),
      );
}

Widget _body() => Container(
      child: ListView(
        scrollDirection: Axis.vertical,
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
    );

Widget getContent(Color bgColor) => Container(
      color: bgColor,
      height: 150,
    );
