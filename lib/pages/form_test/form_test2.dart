import 'package:flutter/material.dart';

class TestForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("测试Form"),
        ),
        body: _Home(),
      );
}

class _Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<_Home> {
  @override
  Widget build(BuildContext context) => Container(
        child: ListView(
          padding: EdgeInsets.all(30.0),
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: "普通文本框"),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(hintText: "密码文本框"),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              maxLines: 4,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurpleAccent),
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "多行文本框",
                hintText: "多行文本框",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurpleAccent),
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              onChanged: (value) {
                print(value);
              },
              decoration: InputDecoration(
                hintText: "监听事件",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurpleAccent),
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      );
}
