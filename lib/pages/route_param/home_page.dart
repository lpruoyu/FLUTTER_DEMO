import 'package:flutter/material.dart';
import 'package:flutterlearn/routes/routes_config.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("测试路由"),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                color: Colors.lightGreenAccent,
                child: Text("有参数跳转"),
                onPressed: () {
                  Navigator.pushNamed(context, RouteConfig.HAS_PARAM,
                      arguments: {"info": "Talk is cheap , show me the code!"});
                },
              ),
              RaisedButton(
                color: Colors.brown,
                child: Text("无参数传递"),
                onPressed: () {
                  Navigator.pushNamed(context, RouteConfig.NO_PARAM);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
