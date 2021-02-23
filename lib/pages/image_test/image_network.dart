import 'package:flutter/material.dart';

class ImageNetworkTest extends StatelessWidget {
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
          child: Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575288678151&di=fc3886e712212d72613131a054022e13&imgtype=0&src=http%3A%2F%2Fpic.kekenet.com%2F2018%2F0703%2F37551530582168.png"),
        ),
      ),
    ),
  );
}
