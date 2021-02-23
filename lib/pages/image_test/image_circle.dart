import 'package:flutter/material.dart';

class ImageCircleTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("本地图片测试"),
        ),
        body: getCircleWithContainer(),
      );
}

Widget getCircleWithCircleAvator() => Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 300,
              height: 300,
              child: CircleAvatar(
                backgroundImage: AssetImage("images/th.jpg"),
              ),
            )
          ],
        ),
      ),
    );

Widget getCircleWithClipOval() => Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ClipOval(
                child: Image.asset(
              "images/th.jpg",
              fit: BoxFit.cover,
              width: 300,
              height: 300,
            ))
          ],
        ),
      ),
    );

Widget getCircleWithContainer() => Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(150),
                  image: DecorationImage(
                      image: AssetImage("images/th.jpg"), fit: BoxFit.cover)),
            )
          ],
        ),
      ),
    );
