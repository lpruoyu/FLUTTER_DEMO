import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("AppBar"),
        ),
        body: MDioTestWidget(),
      );
}

class MDioTestWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MState();
}

class _MState extends State<MDioTestWidget> {
  List dataList = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    var url =
        "http://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=1";
    Response<String> result = await Dio().get(url);
    var data = json.decode(result.data);
    setState(() {
      dataList.addAll(data["result"]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: dataList.length > 0
          ? ListView.builder(
              itemBuilder: (context, index) {
                var d = dataList[index];
                return ListTile(
                  title: Text(d["title"]),
                );
              },
              itemCount: dataList.length,
            )
          : Center(
              child: Text("加载中..."),
            ),
    );
  }
}
