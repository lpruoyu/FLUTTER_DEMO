import 'package:flutter/material.dart';
import 'package:flutterlearn/routes/routes_config.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginHomeState();
}

class LoginHomeState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: TabBarView(
          controller: _controller,
          children: <Widget>[
            getTabSubView("首页", Colors.red),
            getTabSubView("分类", Colors.green),
            getRegisterView(context, "去注册", Colors.blue)
          ],
        ),
        appBar: AppBar(
          title: Text("测试路由"),
          bottom: TabBar(
            controller: _controller,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.category),
              ),
              Tab(
                icon: Icon(Icons.settings),
              ),
            ],
          ),
        ),
      );
}

Widget getTabSubView(String s, MaterialColor color) => Container(
      color: color,
      child: Center(
        child: Text(s),
      ),
    );

Widget getRegisterView(BuildContext context, String s, MaterialColor color) =>
    Container(
      color: color,
      child: Center(
        child: RaisedButton(
          child: Text(s),
          onPressed: () {
            Navigator.pushNamed(context, RouteConfig.REGISTER_PAGE);
          },
        ),
      ),
    );
