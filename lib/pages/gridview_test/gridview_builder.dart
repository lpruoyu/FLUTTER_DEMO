import 'package:flutter/material.dart';

class GridViewWithBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("GridView Builder"),
        ),
        body: _MBody(),
      );
}

class _MBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> strLists = [];

    for (int i = 0; i < 100; i++) {
      strLists.add("专注$i");
    }

    return Container(
      child: GridView.builder(
          padding: EdgeInsets.all(10.0),
          itemCount: strLists.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: 1,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0),
          itemBuilder: (context, index) => getContent(strLists[index])),
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
