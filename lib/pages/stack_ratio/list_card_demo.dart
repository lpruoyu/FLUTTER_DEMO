import 'package:flutter/material.dart';

class PersonalInfoTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("AppBPersonalInfo Text"),
        ),
        body: _Body(),
      );
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        color: Colors.white60,
        child: ListView(
          padding: EdgeInsets.all(5.0),
          children: <Widget>[
            Card(
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      "张三",
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                    subtitle: Text("高级软件开发工程师"),
                  ),
                  ListTile(
                    title: Text("电话：xxxxxx"),
                  ),
                  ListTile(
                    title: Text("住址：xxxxxx"),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      "李四",
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                    subtitle: Text("软件测试工程师"),
                  ),
                  ListTile(
                    title: Text("电话：xxxxxx"),
                  ),
                  ListTile(
                    title: Text("住址：xxxxxx"),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      "王五",
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                    subtitle: Text("软件需求分析师"),
                  ),
                  ListTile(
                    title: Text("电话：xxxxxx"),
                  ),
                  ListTile(
                    title: Text("住址：xxxxxx"),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      "田七",
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                    subtitle: Text("项目经理"),
                  ),
                  ListTile(
                    title: Text("电话：xxxxxx"),
                  ),
                  ListTile(
                    title: Text("住址：xxxxxx"),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      "张三",
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                    subtitle: Text("高级软件开发工程师"),
                  ),
                  ListTile(
                    title: Text("电话：xxxxxx"),
                  ),
                  ListTile(
                    title: Text("住址：xxxxxx"),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      "李四",
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                    subtitle: Text("软件测试工程师"),
                  ),
                  ListTile(
                    title: Text("电话：xxxxxx"),
                  ),
                  ListTile(
                    title: Text("住址：xxxxxx"),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      "王五",
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                    subtitle: Text("软件需求分析师"),
                  ),
                  ListTile(
                    title: Text("电话：xxxxxx"),
                  ),
                  ListTile(
                    title: Text("住址：xxxxxx"),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      "田七",
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                    subtitle: Text("项目经理"),
                  ),
                  ListTile(
                    title: Text("电话：xxxxxx"),
                  ),
                  ListTile(
                    title: Text("住址：xxxxxx"),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      "张三",
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                    subtitle: Text("高级软件开发工程师"),
                  ),
                  ListTile(
                    title: Text("电话：xxxxxx"),
                  ),
                  ListTile(
                    title: Text("住址：xxxxxx"),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      "李四",
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                    subtitle: Text("软件测试工程师"),
                  ),
                  ListTile(
                    title: Text("电话：xxxxxx"),
                  ),
                  ListTile(
                    title: Text("住址：xxxxxx"),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      "王五",
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                    subtitle: Text("软件需求分析师"),
                  ),
                  ListTile(
                    title: Text("电话：xxxxxx"),
                  ),
                  ListTile(
                    title: Text("住址：xxxxxx"),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      "田七",
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                    subtitle: Text("项目经理"),
                  ),
                  ListTile(
                    title: Text("电话：xxxxxx"),
                  ),
                  ListTile(
                    title: Text("住址：xxxxxx"),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
