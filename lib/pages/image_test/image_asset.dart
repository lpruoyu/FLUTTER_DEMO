import 'package:flutter/material.dart';

class ImageAssetTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("本地图片测试"),
        ),
        body: Container(
          child: Center(
            child: Container(
              color: Colors.blue,
              width: 400,
              height: 400,
              child: Image.asset(
                "images/mydiskbg.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      );
}
