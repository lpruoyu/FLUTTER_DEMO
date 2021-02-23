import 'package:flutter/material.dart';

class GridViewNormal extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("GridView Normal"),
        ),
        body: _MBody(),
      );
}

class _MBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> strLists = [];

    for (int i = 0; i < 30; i++) {
      strLists.add("专注$i");
    }

    return Container(
      child: GridView.count(
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        crossAxisCount: 3,
        padding: EdgeInsets.all(10.0),
        children: strLists.map((v) => getContent(v)).toList(),
      ),
    );
  }
}

Widget getContent(String info) => Container(
      color: Colors.blue,
      alignment: Alignment.center,
      child: Text(
        info,
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
    );
