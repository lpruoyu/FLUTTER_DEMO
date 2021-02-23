import 'package:flutter/material.dart';

class RadioTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Radio相关"),
        ),
        body: _Body(),
      );
}

class _Body extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  int man = 0, woman = 1, topValue = 0, bottomValue = 1;
  int genderGroupValue = 0;
  int radioListTileGroupValue = 1;
  bool switchValue = false;

  @override
  Widget build(BuildContext context) => Container(
        child: ListView(
          padding: EdgeInsets.all(30.0),
          children: <Widget>[
            Row(
              children: <Widget>[
                Text("男"),
                Expanded(
                  flex: 1,
                  child: Radio(
                    value: man,
                    onChanged: (value) {
                      setState(() {
                        genderGroupValue = value;
                      });
                    },
                    groupValue: genderGroupValue,
                  ),
                ),
                Text("女"),
                Expanded(
                  flex: 1,
                  child: Radio(
                    value: woman,
                    onChanged: (value) {
                      setState(() {
                        genderGroupValue = value;
                      });
                    },
                    groupValue: genderGroupValue,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child:
                      Text("您选中的是 ：${genderGroupValue == woman ? "女" : "男"}"),
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            RadioListTile(
              groupValue: radioListTileGroupValue,
              onChanged: (value) {
                setState(() {
                  radioListTileGroupValue = topValue;
                });
              },
              value: topValue,
              title: Text("top title"),
              secondary: Icon(Icons.label),
            ),
            RadioListTile(
              groupValue: radioListTileGroupValue,
              onChanged: (value) {
                setState(() {
                  radioListTileGroupValue = bottomValue;
                });
              },
              value: bottomValue,
              title: Text("bottom title"),
              secondary: Icon(Icons.pages),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Switch(
                  value: switchValue,
                  onChanged: (value) {
                    setState(() {
                      switchValue = value;
                    });
                  },
                ),
                Text("${switchValue ? "打开" : "关闭"}"),
              ],
            ),
          ],
        ),
      );
}
