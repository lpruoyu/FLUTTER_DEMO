import 'package:flutter/material.dart';

final List<Map> datas = [
  {
    "name": "Java",
    "subname": "专注",
    "imageurl":
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575297183989&di=362682007301c2f19ff8bcfd269f78c5&imgtype=0&src=http%3A%2F%2Fwww.bwie.com%2Fuploads%2F160718%2F13-160gp9293me.jpg"
  },
  {
    "name": "C",
    "subname": "起源于此",
    "imageurl":
        "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=3560222927,263752359&fm=26&gp=0.jpg"
  },
  {
    "name": "Dart",
    "subname": "干死他",
    "imageurl":
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575297235914&di=26da7687742807254b0bef9b1bf7959e&imgtype=jpg&src=http%3A%2F%2Fimg2.imgtn.bdimg.com%2Fit%2Fu%3D3129604497%2C3980030080%26fm%3D214%26gp%3D0.jpg"
  },
  {
    "name": "Kotlin",
    "subname": "保持冷静",
    "imageurl":
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575297255492&di=b1fb062dd7d681a91de3eef8cc581b3d&imgtype=jpg&src=http%3A%2F%2Fimg3.imgtn.bdimg.com%2Fit%2Fu%3D3026720823%2C837868370%26fm%3D214%26gp%3D0.jpg"
  },
  {
    "name": "Groovy",
    "subname": "专注",
    "imageurl":
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575297277490&di=cf89626905fc59f1336c9ef20052589a&imgtype=jpg&src=http%3A%2F%2Fimg3.imgtn.bdimg.com%2Fit%2Fu%3D3524991553%2C2778309537%26fm%3D214%26gp%3D0.jpg"
  },
  {
    "name": "JavaScript",
    "subname": "不要让傻逼影响你！",
    "imageurl":
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575297293198&di=1324f7adf42a3221d22927210b6dd88b&imgtype=0&src=http%3A%2F%2Fd.hiphotos.baidu.com%2Fzhidao%2Fpic%2Fitem%2F4610b912c8fcc3ced0c353279a45d688d43f20a6.jpg"
  },
];

class ListViewDynamic extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("ListView Dynamic"),
          centerTitle: true,
        ),
        body: _body(),
      );
}

Widget _body() => Container(
      color: Colors.amber,
      child: ListView.builder(
          itemCount: datas.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 1, color: Colors.brown))),
              padding: EdgeInsets.all(8),
              child: ListTile(
                title: Text(
                  datas[index]["name"],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                subtitle: Text(
                  datas[index]["subname"],
                  style: TextStyle(color: Colors.black),
                ),
                leading: ClipOval(
                  child: Image.network(
                    datas[index]["imageurl"],
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
          }),
    );
