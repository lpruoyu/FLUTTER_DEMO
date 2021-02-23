import 'package:flutter/material.dart';

class PositionTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Position Test"),
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
              Positioned(
                left: 100,
                top: 100,
                child: Icon(
                  Icons.add,
                  color: Colors.green,
                  size: 60,
                ),
              ),
              Positioned(
                left: 200,
                top: 200,
                child: Icon(
                  Icons.search,
                  color: Colors.yellow,
                  size: 60,
                ),
              ),
              Positioned(
                left: 300,
                top: 300,
                child: Icon(
                  Icons.clear,
                  size: 60,
                  color: Colors.orange,
                ),
              ),
            ],
          ),
        ),
      );
}
