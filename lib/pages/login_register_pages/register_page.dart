import 'package:flutter/material.dart';
import 'package:flutterlearn/routes/routes_config.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Register"),
          centerTitle: true,
        ),
        body: Container(
          child: Center(
            child: RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteConfig.LOGIN_PAGE);
              },
              child: Text("注册成功，去登录"),
            ),
          ),
        ),
      ),
    );
  }
}
