import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("学院信息登录系统"),
        ),
        body: _Body(),
      );
}

class _Body extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  int genderGroupValue = 1, manValue = 0, womanValue = 1;

  void setGender(value) {
    setState(() {
      genderGroupValue = value;
    });
  }

  List<Map> hobbys = [
    {"hobby": "Java", "like": "舒畅", "isLike": true},
    {"hobby": "Dart", "like": "林依晨", "isLike": false},
    {"hobby": "C", "like": "石原里美", "isLike": true},
  ];

  List<Widget> getHobbys() => hobbys
      .map((v) => Row(
            children: <Widget>[
              Text(v["like"]),
              Checkbox(
                onChanged: (value) {
                  setState(() {
                    v["isLike"] = value;
                  });
                },
                value: v["isLike"],
              )
            ],
          ))
      .toList();

  double _otherPadding = 30.0;
  double _topPadding = 80.0;

  @override
  Widget build(BuildContext context) => Container(
        child: ListView(
          padding: EdgeInsets.fromLTRB(
              _otherPadding, _topPadding, _otherPadding, _otherPadding),
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: "请输入姓名",
                labelText: "姓名",
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purpleAccent)),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: <Widget>[
                Text("男"),
                Radio(
                  value: manValue,
                  groupValue: genderGroupValue,
                  onChanged: setGender,
                ),
                Text("女"),
                Radio(
                  value: womanValue,
                  groupValue: genderGroupValue,
                  onChanged: setGender,
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Text(
                    "喜欢：",
                    style: TextStyle(color: Colors.deepPurple, fontSize: 18.0),
                  ),
                ),
                Row(
                  children: getHobbys(),
                )
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              height: 50.0,
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(30.0)),
              child: FlatButton(
                child: Text(
                  "登录",
                  style: TextStyle(color: Colors.white, fontSize: 24.0),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      );
}
