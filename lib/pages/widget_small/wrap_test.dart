import 'package:flutter/material.dart';

class WrapTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Wrap Test"),
        ),
        body: _Body(),
      );
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.all(8.0),
        child: Wrap(
          runSpacing: 10.0,
          spacing: 10.0,
          children: <Widget>[
            MButton("aaaa"),
            MButton("sadfafs"),
            MButton("ffffffweeeeeeffffffff"),
            MButton("assssfaaaaaaaaeaa"),
            MButton("aaaaaa"),
            MButton("aaaa"),
            MButton("sadfafs"),
            MButton("ffffffffffffff"),
            MButton("assssafaaa"),
            MButton("aaaaaa"),
            MButton("aa"),
            MButton("aaaa"),
            MButton("sadfafs"),
            MButton("ffffffffggffffff"),
            MButton("assssafaaa"),
            MButton("aaaaaa"),
            MButton("aa"),
            MButton("aaaaaaa"),
            MButton("aaaa"),
            MButton("sadfafs"),
            MButton("ffffffffffffff"),
            MButton("assssafaaa"),
            MButton("aaaaaa"),
            MButton("aa"),
            MButton("aaaa"),
            MButton("sadfafs"),
            MButton("ffffffffffffff"),
            MButton("assssafaaa"),
            MButton("aaaacaa"),
            MButton("aa"),
          ],
        ),
      );
}

class MButton extends StatelessWidget {
  final String info;

  MButton(this.info);

  void _press() {}

  @override
  Widget build(BuildContext context) => OutlineButton(
        borderSide: BorderSide(color: Colors.blue, width: 5.0),
        onPressed: _press,
        color: Colors.white,
        child: Text(
          info,
          style: TextStyle(color: Colors.black, fontSize: 24.0),
        ),
      );
}
