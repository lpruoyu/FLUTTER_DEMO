import 'package:flutter/material.dart';

class BottomNavigationTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("BottomNavigation Test"),
        ),
        body: _Body(),
      );
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.red,
              ),
            ),
            BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home), title: Text("home")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.category), title: Text("category")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), title: Text("search")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), title: Text("settings")),
              ],
            ),
          ],
        ),
      );
}
