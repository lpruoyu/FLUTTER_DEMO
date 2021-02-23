import 'package:flutter/material.dart';

class BottomNavigationTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BottomNavigationTestState();
}

class _BottomNavigationTestState extends State<BottomNavigationTest> {
  List<Widget> _bodys = [];

  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _bodys.add(_Body("ONE", Colors.red));
    _bodys.add(_Body("TWO", Colors.blue));
    _bodys.add(_Body("THREE", Colors.green));
    _bodys.add(_Body("FOUR", Colors.deepPurple));
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("BottomNavigation Test"),
        ),
        body: _bodys[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.add), title: Text("add")),
            BottomNavigationBarItem(
                icon: Icon(Icons.backspace), title: Text("backspace")),
            BottomNavigationBarItem(
                icon: Icon(Icons.zoom_out), title: Text("zoom_out")),
            BottomNavigationBarItem(
                icon: Icon(Icons.youtube_searched_for),
                title: Text("youtube_searched_for")),
          ],
        ),
      );
}

class _Body extends StatelessWidget {
  final Color bgColor;

  final String info;

  _Body(this.info, this.bgColor);

  @override
  Widget build(BuildContext context) => Container(
        color: bgColor,
        child: Center(
          child:
              Text(info, style: TextStyle(color: Colors.white, fontSize: 30.0)),
        ),
      );
}
