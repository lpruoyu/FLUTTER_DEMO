import 'package:flutter/material.dart';

import 'package:connectivity/connectivity.dart';

class MNetworkListenerTest extends StatelessWidget {

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("NetworkListener Test"),
        ),
        body: NetWorkListener(),
      );
}

class NetWorkListener extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MState();
}

class _MState extends State<NetWorkListener> {
  String currentNetworkState = "还没有监听网络状态";
  var subscription;

  @override
  initState() {
    super.initState();

    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      if (result == ConnectivityResult.mobile) {
        currentNetworkState = "当前处于流量状态";
      } else if (result == ConnectivityResult.wifi) {
        currentNetworkState = "目前处于wifi状态";
      } else {
        currentNetworkState = "没有连接网络";
      }
      setState(() {
//           currentNetworkState;
      });
    });
  }

  @override
  dispose() {
    super.dispose();
    subscription.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text(currentNetworkState)),
    );
  }
}
