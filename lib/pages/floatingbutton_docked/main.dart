import 'package:flutter/material.dart';

class FloatingButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FloatingButtonState();
}

class _FloatingButtonState extends State<FloatingButton> {
  List<Widget> bodys = [
    getBody("ONE", Colors.red),
    getBody("TWO", Colors.blue),
    getBody("THREE", Colors.green),
    getBody("FOUR", Colors.yellow),
    getBody("FIVE", Colors.deepPurpleAccent),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("闲鱼FloatingButton功能"),
        ),
        floatingActionButton: Container(
          width: 70,
          height: 70,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(35)),
          child: FloatingActionButton(
            tooltip: "我爱你，舒畅！",
            elevation: 2,
            backgroundColor:
                this._currentIndex == 2 ? Colors.green : Colors.deepPurple,
            onPressed: () {
              setState(() {
                this._currentIndex = 2;
              });
            },
            child: Icon(Icons.add),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              this._currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text("Home")),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), title: Text("Category")),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.near_me,
                  color: Colors.transparent,
                ),
                title: Text("NearMe")),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), title: Text("Search")),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), title: Text("Settings")),
          ],
        ),
        body: bodys[_currentIndex],
      );
}

Widget getBody(String info, Color bgColor) => Container(
      color: bgColor,
      child: Center(
        child: Text(
          info,
          style: TextStyle(fontSize: 34.0, color: Colors.brown),
        ),
      ),
    );
