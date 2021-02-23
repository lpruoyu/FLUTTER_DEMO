import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappbrowser/flutter_inappbrowser.dart';

class MNewsInfo extends StatefulWidget {
  final Map arguments;

  MNewsInfo(this.arguments);

  @override
  State<StatefulWidget> createState() => _MState();
}

class _MState extends State<MNewsInfo> {
  bool isLoading = true;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("新闻详情"),
        ),
        body: Container(
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Expanded(
                    child: InAppWebView(
                      onProgressChanged:
                          (InAppWebViewController controller, int progress) {
                        if (progress >= 99) {
                          setState(() {
                            isLoading = false;
                          });
                        }
                      },
                      initialUrl:
                          "http://www.phonegap100.com/newscontent.php?aid=${widget.arguments["aid"]}",
                    ),
                    flex: 1,
                  )
                ],
              ),
              isLoading
                  ? Material(
                      type: MaterialType.transparency,
                      child: Container(
                        color: Colors.grey,
                        child: Center(
                            child: Container(
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              CircularProgressIndicator(),
                              SizedBox(
                                height: 8.0,
                              ),
                              Text("加载中......"),
                              SizedBox(
                                height: 4.0,
                              )
                            ],
                          ),
                        )),
                      ),
                    )
                  : Text("")
            ],
          ),
        ),
      );
}
