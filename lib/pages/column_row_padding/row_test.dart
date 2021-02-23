import 'package:flutter/material.dart';
import 'package:flutterlearn/pages/column_row_padding/common_widget.dart';

class RowTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Row Test"),
        ),
        body: _Home(),
      );
}

class _Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          textDirection: TextDirection.rtl,
          mainAxisSize: MainAxisSize.max,
          textBaseline: TextBaseline.ideographic,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: ContainerWithIcon("last_page", Icons.last_page),
            ),
            Expanded(
              flex: 1,
              child: ContainerWithIcon(
                "info",
                Icons.info,
                bgColor: Colors.greenAccent,
              ),
            ),
            Expanded(
              flex: 1,
              child: ContainerWithIcon(
                "search",
                Icons.search,
                bgColor: Colors.blueAccent,
              ),
            ),
            Expanded(
              flex: 1,
              child: ContainerWithIcon(
                "wifi_tethering",
                Icons.wifi_tethering,
                bgColor: Colors.yellow,
              ),
            ),
          ],
        ),
      );
}
