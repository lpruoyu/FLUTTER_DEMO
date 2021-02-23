import 'package:flutter/material.dart';

class HasParamPage extends StatelessWidget {
  final Map arguments;

  HasParamPage({this.arguments});

  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Scaffold(
          appBar: AppBar(
            title: Text("HasParamPage"),
          ),
          body: _Body(arguments),
        ),
      );
}

class _Body extends StatelessWidget {
  final Map arguments;

  _Body(this.arguments);

  @override
  Widget build(BuildContext context) => Container(
        color: Colors.blue,
        child: Center(
          child: Text(
            arguments["info"],
            style: TextStyle(fontSize: 44.0),
          ),
        ),
      );
}
