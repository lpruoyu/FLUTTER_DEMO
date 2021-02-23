import 'package:flutter/material.dart';

class ListViewNormal extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("ListView Normal"),
          centerTitle: true,
        ),
        body: _body(),
      );
}

Widget _body() => Container(
      color: Colors.amber,
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Text("普通列表"),
          ),
          Text("普通列表"),
          Image.network(
              "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575296434497&di=e5f106f848e75a8a53feb6340dba7920&imgtype=0&src=http%3A%2F%2Fimage.uc.cn%2Fs%2Fwemedia%2Fs%2Fupload%2F2018%2F678288be6878c35703b8e36c1ae4341a.jpg"),
        ],
      ),
    );
