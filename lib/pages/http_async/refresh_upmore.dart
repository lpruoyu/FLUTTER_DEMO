import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RefreshUpMoreWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("RefreshUpMoreWidget Test"),
        ),
        body: RefreshUpMore(),
      );
}

class RefreshUpMore extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MState();
}

class _MState extends State<RefreshUpMore> {
  final String baseUrl =
      "http://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=";

  int pageIndex = 1;

  Dio mDio;

  List dataList = [];

  bool hasMore = true;

  ScrollController _controller = ScrollController();

  @override
  void initState() {
    super.initState();
    mDio = Dio();
    _controller.addListener(() {
      if (_controller.position.pixels >=
          _controller.position.maxScrollExtent - 20) {
        requestData();
      }
    });
    requestData();
  }

  void requestData() async {
    if (hasMore) {
      var url = baseUrl + "${pageIndex++}";
      var future = await mDio.get(url);
      var data = json.decode(future.data)["result"];
      setState(() {
        if (data.length < 20) {
          hasMore = false;
        }
        dataList.addAll(data);
      });
      print(data.length);
    }
  }

  Future<void> _onRefresh() async {
    await Future.delayed(Duration(milliseconds: 2000), () {
      requestData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RefreshIndicator(
        child: dataList.length > 0
            ? ListView.builder(
                controller: _controller,
                itemBuilder: (context, index) {
                  if (index == dataList.length - 1) {
                    if (hasMore) {
                      return Column(
                        children: <Widget>[
                          ListTile(
                            title: Text(dataList[index]["title"]),
                          ),
                          RefreshProgress()
                        ],
                      );
                    } else {
                      return Column(
                        children: <Widget>[
                          ListTile(
                            title: Text(dataList[index]["title"]),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              "- - - - 我是有底线的 - - - -",
                              textAlign: TextAlign.center,
                            ),
                            height: 50,
                          )
                        ],
                      );
                    }
                  } else {
                    return ListTile(
                      title: Text(dataList[index]["title"]),
                    );
                  }
                },
                itemCount: dataList.length,
              )
            : RefreshProgress(),
        onRefresh: _onRefresh,
      ),
    );
  }
}

class RefreshProgress extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[CircularProgressIndicator(), Text("加载中......")],
          ),
        ),
      );
}
