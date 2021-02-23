import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'common_api.dart';

class HttpTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("http test"),
        ),
        body: _Body(),
      );
}

class _Body extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  List dataList = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    var result = await http.get(apiUrl);
    var jsonObj = json.decode(result.body);
    setState(() {
      dataList.addAll(jsonObj["result"]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: dataList.length > 0
          ? ListView.builder(
              itemBuilder: (context, index) => ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              _MProductInfo(dataList[index]["list"])));
                },
                title: Text(dataList[index]["title"]),
              ),
              itemCount: dataList.length,
            )
          : Center(
              child: Text("正在加载中！"),
            ),
    );
  }
}

class _MProductInfo extends StatelessWidget {
  final List data;

  _MProductInfo(this.data);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: Scaffold(
        appBar: AppBar(
          title: Text("商品详情"),
        ),
        body: SBody(data),
      ),
    );
  }
}

class SBody extends StatefulWidget {
  final List data;

  SBody(this.data);

  @override
  State<StatefulWidget> createState() => _MState();
}

class _MState extends State<SBody> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.data.length,
        itemBuilder: (context, index) {
          var data = widget.data[index];
          return ListTile(
            title: Text(data["catename"]),
            subtitle: Text(data["title"]),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575463109715&di=87e008334f5d6cb65cbcbf8fd16371cc&imgtype=0&src=http%3A%2F%2Fphoto.16pic.com%2F00%2F14%2F85%2F16pic_1485726_b.jpg"),
            ),
          );
        });
  }
}
