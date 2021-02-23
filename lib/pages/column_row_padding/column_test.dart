import 'package:flutter/material.dart';
import 'package:flutterlearn/pages/column_row_padding/common_widget.dart';

class ColumnTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Column Test"),
        ),
        body: _Home(),
      );
}

class _Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          textDirection: TextDirection.rtl,
          mainAxisSize: MainAxisSize.max,
          textBaseline: TextBaseline.ideographic,
          children: <Widget>[
            ContainerWithIcon("last_page", Icons.last_page),
            ContainerWithIcon(
              "info",
              Icons.info,
              bgColor: Colors.greenAccent,
            ),
            ContainerWithIcon(
              "search",
              Icons.search,
              bgColor: Colors.blueAccent,
            ),
            ContainerWithIcon(
              "wifi_tethering",
              Icons.wifi_tethering,
              bgColor: Colors.yellow,
            ),
          ],
        ),
      );
}
