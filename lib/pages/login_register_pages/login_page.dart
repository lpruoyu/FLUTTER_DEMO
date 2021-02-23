import 'package:flutter/material.dart';
import 'package:flutterlearn/routes/routes_config.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login"),
          centerTitle: true,
        ),
        body: Container(
          child: Center(
            child: RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteConfig.LOGIN_SUCCESSFUL);
              },
              child: Text("点击登录"),
            ),
          ),
        ),
      ),
    );
  }
}
