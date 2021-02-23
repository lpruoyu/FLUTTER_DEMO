import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("UrlLauncher Test"),
        ),
        body: _Body(),
      );
}

class _Body extends StatelessWidget {
  _launchURL() async {
    const url = 'tel:10086';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) => Container(
        child: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                child: Text("拨打电话"),
                onPressed: _launchURL,
              ),
            ],
          ),
        ),
      );
}
