import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterlearn/pages/tabbar_bottombar0/tb_category_page.dart';

class TBHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Container(
          child: Center(
            child: Text("首页"),
          ),
        ),
      );
}

class TBSettingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TBSettingPageState();
}

class _TBSettingPageState extends State<TBSettingPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    if (_tabController != null) {
      _tabController.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);

    double paddingTop = mediaQueryData.padding.top;
    double paddingOthers = 0.0;

    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.yellow,
            padding: EdgeInsets.fromLTRB(paddingOthers, paddingTop, paddingOthers, paddingOthers),
            child: TabBar(
              controller: _tabController,
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
          Expanded(
            flex: 1,
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                getContainer("ONE", Colors.deepPurpleAccent, Colors.brown),
                getContainer("TWO", Colors.lightBlueAccent, Colors.black),
                getContainer("THREE", Colors.deepOrangeAccent, Colors.white),
              ],
            ),
          )
        ],
      ),
    );
  }
}
