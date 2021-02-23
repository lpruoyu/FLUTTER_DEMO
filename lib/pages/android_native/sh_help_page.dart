import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SpHelperPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("SpHelperPage test"),
        ),
        body: MSpHelpState(),
      );
}

class MSpHelpState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MState();
}

class _MState extends State<MSpHelpState> {
  String currentData = "点击获取数据";

  Future<void> getData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    String data = await sp.getString("user");
    setState(() {
      currentData = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("点击获取数据"),
            onPressed: () async {
              await getData();
            },
          ),
          Text(currentData),
        ],
      ),
    );
  }
}
