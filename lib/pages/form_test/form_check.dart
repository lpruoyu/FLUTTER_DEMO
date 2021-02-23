import 'package:flutter/material.dart';

class CheckBoxTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("测试CheckBox"),
          centerTitle: true,
        ),
        body: _HomeBody(),
      );
}

class _HomeBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<_HomeBody> {
  bool _checkboxIsChecked = false;
  bool _checkboxListTileIsChecked = true;

  @override
  Widget build(BuildContext context) => Container(
        child: ListView(
          padding: EdgeInsets.all(30.0),
          children: <Widget>[
            Container(
              color: Colors.yellow,
              child: Checkbox(
                value: _checkboxIsChecked,
                onChanged: (value) {
                  setState(() {
                    _checkboxIsChecked = value;
                  });
                },
                activeColor: Colors.deepOrange,
                checkColor: Colors.white,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              color: Colors.purpleAccent,
              child: CheckboxListTile(
                checkColor: Colors.red,
                activeColor: Colors.white,
                title: Text(
                  "title",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  "subtitle",
                  style: TextStyle(color: Colors.white),
                ),
                onChanged: (value) {
                  setState(() {
                    _checkboxListTileIsChecked = value;
                  });
                },
                value: _checkboxListTileIsChecked,
              ),
            ),
          ],
        ),
      );
}
