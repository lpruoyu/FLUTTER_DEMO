import 'package:flutter/material.dart';

class ImageFitTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("本地图片测试"),
        ),
        body: Container(
          child: Center(
            child: Container(
              width: 400,
              height: 400,
              color: Colors.red,
              child: Image.network(
                "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575288678151&di=1a3f66460df8f4976bbb4bab129b637e&imgtype=0&src=http%3A%2F%2Fdownload.5tu.cn%2Fattachments%2Fimage_files%2Fmonth_1501%2F1501131816c4c429f74253ce17.jpg",
                fit: BoxFit.none,
              ),
            ),
          ),
        ),
      );
}
