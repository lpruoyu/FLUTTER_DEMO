import 'package:flutter/material.dart';

class StackTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Stack Test"),
        ),
        body: _Body(),
      );
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        alignment: Alignment.center,
        color: Colors.blue,
        child: Container(
          width: 400,
          height: 400,
          color: Colors.red,
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.add,
                  color: Colors.green,
                  size: 60,
                ),
              ),
              Align(
                child: Icon(
                  Icons.search,
                  color: Colors.yellow,
                  size: 60,
                ),
                alignment: Alignment.bottomCenter,
              ),
              Align(
                child: Icon(
                  Icons.clear,
                  size: 60,
                  color: Colors.orange,
                ),
                alignment: Alignment.topCenter,
              ),
            ],
          ),
        ),
      );
}
