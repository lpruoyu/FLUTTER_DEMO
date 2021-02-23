import 'dart:async';

import 'package:flutter/material.dart';

class MCreateDialogTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("MCreateDialog Test"),
        ),
        body: _Body(),
      );
}

class _Body extends StatelessWidget {
  var result;

  void _showMCreateDialog(context) async {
    Timer.periodic(Duration(seconds: 4), (timer) {
      timer.cancel();
      Navigator.pop(context);
      print(result);
    });
    result =
        await showDialog(context: context, builder: (context) => _MDialog());
  }

  @override
  Widget build(BuildContext context) => Container(
        child: Center(
          child: RaisedButton(
            child: Text("展示自定义Dialog"),
            onPressed: () {
              _showMCreateDialog(context);
            },
          ),
        ),
      );
}

class _MDialog extends Dialog {
  @override
  Widget build(BuildContext context) {
    double mD = MediaQuery.of(context).size.width - 50;
    double mH = MediaQuery.of(context).size.height / 2;

    return Material(
      child: Center(
        child: Container(
          color: Colors.white,
          width: mD,
          height: mH,
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                child: Stack(
                  children: <Widget>[
                    Align(
                      child: Text(
                        "关于我们",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
                height: mH / 7,
              ),
              Divider(
                color: Colors.black,
                height: 5,
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                      "做出来！做出来！做出来！做出来！做出来！做出来！做出来！做出来！做出来！做出来！做出来！做出来！做出来！做出来！做出来！做出来！做出来！做出来！做出来！做出来！做出来！做出来！做出来！做出来！做出来！做出来！做出来！做出来！做出来！做出来！做出来！做出来！做出来！做出来！做出来！做出来！做出来！做出来！做出来！做出来！"),
                ),
              ),
            ],
          ),
        ),
      ),
      type: MaterialType.transparency,
    );
  }
}
