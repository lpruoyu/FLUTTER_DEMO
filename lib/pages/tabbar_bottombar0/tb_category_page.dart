import 'package:flutter/material.dart';

class TBCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: TabBar(
              indicatorColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.zoom_in),
                ),
                Tab(
                  icon: Icon(Icons.zoom_out),
                ),
                Tab(
                  icon: Icon(Icons.zoom_out_map),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              getContainer("ONE", Colors.deepPurpleAccent, Colors.brown),
              getContainer("TWO", Colors.lightBlueAccent, Colors.black),
              getContainer("THREE", Colors.deepOrangeAccent, Colors.white),
            ],
          ),
        ),
      );
}

Widget getContainer(String info, Color bgColor, Color textColor) => Container(
        child: Container(
      color: bgColor,
      child: Center(
        child: Text(
          info,
          style: TextStyle(fontSize: 34.0, color: textColor),
        ),
      ),
    ));
