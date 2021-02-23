import 'package:flutter/material.dart';
import 'package:flutterlearn/routes/routes_config.dart';

class LoginSuccessfulPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: Scaffold(
        appBar: AppBar(
          title: Text("LoginSuccessful"),
          centerTitle: true,
        ),
        body: Container(
          child: Center(
            child: RaisedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context,
                    RouteConfig.LOGIN_REGISTER_MAIN, (data) => data == null);
              },
              child: Text("你好，登录成功！"),
            ),
          ),
        ),
      ),
    );
  }
}
