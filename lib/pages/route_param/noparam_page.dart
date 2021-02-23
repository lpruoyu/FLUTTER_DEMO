import 'package:flutter/material.dart';

class NoParamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData(primarySwatch: Colors.green),
        home: Scaffold(
          appBar: AppBar(
            title: Text("NoParamPage"),
          ),
          body: _Body(),
        ),
      );
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        color: Colors.green,
        child: Center(
          child: Text("做最好的自己！"),
        ),
      );
}
