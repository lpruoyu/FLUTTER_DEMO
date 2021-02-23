import 'dart:math';

import 'package:flutter/material.dart';

class ListViewDynamicIncrementTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("ListViewDynamicIncrement Test"),
        ),
        body: _MStatefulWidget(),
      );
}

class _MStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MState();
}

class _MState extends State<_MStatefulWidget> {
  List<String> list = [];

  @override
  Widget build(BuildContext context) => Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: RaisedButton(
                    onPressed: () {
                      setState(() {
                        var nextInt = Random().nextInt(30);
                        list.add("数据$nextInt");
                      });
                    },
                    child: Text("点击向ListView增加数据"),
                  ),
                ),
              ],
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.blue,
                child: ListView(
                  children: list
                      .map((ele) => ListTile(
                            title: Text(ele),
                          ))
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      );
}
