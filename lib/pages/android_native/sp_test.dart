import 'package:flutter/material.dart';
import 'package:flutterlearn/routes/routes_config.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("SharedPreference Test"),
        ),
        body: SpStateTest(),
      );
}

class SpStateTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MState();
}

class _MState extends State<SpStateTest> {
  Future<void> removeData(String key) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    sharedPreferences.remove(key);
  }

  Future<String> getData(String key) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(key);
  }

  Future<void> saveData(String key, String value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    sharedPreferences.setString(key, value);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("保存数据"),
            onPressed: () async {
              await saveData("user", "刘鹏");
            },
          ),
          RaisedButton(
            child: Text("获取数据"),
            onPressed: () async {
              String data = await getData("user");
              print(data);
            },
          ),
          RaisedButton(
            child: Text("删除数据"),
            onPressed: () async {
              await removeData("user");
            },
          ),
          RaisedButton(
            child: Text("点击跳转至帮助页面"),
            onPressed: () async {
              Navigator.pushNamed(context, RouteConfig.SHARED_PREFERENCE_HELP);
            },
          ),
        ],
      ),
    );
  }
}
