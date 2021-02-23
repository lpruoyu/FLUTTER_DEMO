import 'package:amap_location/amap_location.dart';
import 'package:flutter/material.dart';
import 'package:flutterlearn/routes/routes_config.dart';

void main() {
  AMapLocationClient.setApiKey("014f07a9d3284532033ec1396638252d");
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteConfig.onGenerateRoute,
        initialRoute: "/",
        theme: ThemeData(primarySwatch: Colors.deepPurple),
      );
}
