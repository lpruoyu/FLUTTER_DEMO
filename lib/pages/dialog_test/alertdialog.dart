import 'package:flutter/material.dart';

class AlertDialogTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("AlertDialog Test"),
        ),
        body: _Body(),
      );
}

// ignore: must_be_immutable
class _Body extends StatelessWidget {
  BuildContext mContext;

  void _showAlertDialog() async {
    var result = await showDialog(
        context: mContext,
        builder: (context) => AlertDialog(
              title: Text("提示信息！"),
              content: Text("您确定想要改变世界吗？"),
              actions: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.pop(context, "确定");
                  },
                  child: Text("确定"),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.pop(context, "确定");
                  },
                  child: Text("确定"),
                ),
              ],
            ));
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    mContext = context;
    return Container(
      child: Center(
        child: RaisedButton(
          onPressed: _showAlertDialog,
          child: Text("show alertdialog"),
        ),
      ),
    );
  }
}
