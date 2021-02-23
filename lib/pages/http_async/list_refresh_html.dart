import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutterlearn/routes/routes_config.dart';

class MListInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("新闻列表"),
        ),
        body: ListRefreshHtmlWidget(),
      );
}

class ListRefreshHtmlWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MState();
}

class _MState extends State<ListRefreshHtmlWidget> {
  final String newsList =
      "http://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=";

  int pageIndex = 1;

  ScrollController _controller = ScrollController();

  bool hasMore = true;

  List dataList = [];

  Dio dio = Dio();

  Future<void> _onRefersh() async {
    await Future.delayed(Duration(milliseconds: 2500), () {
      requestData();
    });
  }

  void requestData() async {
    if (hasMore) {
      var response = await dio.get(newsList + "${pageIndex++}");
      var decode = json.decode(response.data)["result"];
      if (decode.length < 20) {
        hasMore = false;
      }
      setState(() {
        dataList.addAll(decode);
      });
      print(decode.length);
    }
  }

  @override
  void initState() {
    super.initState();
    requestData();
    _controller.addListener(() {
      if (_controller.position.pixels >=
          _controller.position.maxScrollExtent - 20) {
        requestData();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: dataList.length > 0
          ? RefreshIndicator(
              child: ListView.builder(
                controller: _controller,
                itemBuilder: (context, index) {
                  if (index == dataList.length - 1) {
                    if (hasMore) {
                      return Column(
                        children: <Widget>[
                          getListTile(index),
                          MRefreshProgress()
                        ],
                      );
                    } else {
                      return Column(
                        children: <Widget>[
                          getListTile(index),
                          Container(
                            height: 45.0,
                            child: Text(
                              "- - - - 我是有底线的 - - - -",
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      );
                    }
                  } else {
                    return getListTile(index);
                  }
                },
                itemCount: dataList.length,
              ),
              onRefresh: _onRefersh,
            )
          : MRefreshProgress(),
    );
  }

  Widget getListTile(index) {
    return ListTile(
      onTap: () {
        Navigator.pushNamed(context, RouteConfig.NEWS_INFO,
            arguments: {"aid": dataList[index]["aid"]});
      },
      title: Text(dataList[index]["title"]),
    );
  }
}

class MRefreshProgress extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator(),
              SizedBox(
                height: 8.0,
              ),
              Text(
                "加载中......",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 5.0,
              )
            ],
          ),
        ),
      );
}
