import 'package:flutter/material.dart';
import 'package:flutterlearn/pages/tabbar_bottombar0/tb_category_page.dart';
import 'package:flutterlearn/pages/tabbar_bottombar0/tb_home_setting_page.dart';

class TabBarBottomMain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TabBarBottomMainState();
}

class _TabBarBottomMainState extends State<TabBarBottomMain> {

  final List<Widget> bodys = [
    TBHomePage(),
    TBCategory(),
    TBSettingPage()
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("测试TabBar和Bottom结合"),
        ),
        body: bodys[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), title: Text("分类")),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), title: Text("设置")),
          ],
          currentIndex: _currentIndex,
        ),
      );
}

class _MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container();
}
