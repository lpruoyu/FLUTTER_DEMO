import 'package:flutter/material.dart';

class AspectRatioTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("AspectRatio Test"),
        ),
        body: _Body(),
      );
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        color: Colors.red,
        child: AspectRatio(
          aspectRatio: 2,
          child: Container(
            color: Colors.yellow,
          ),
        ),
      );
}
