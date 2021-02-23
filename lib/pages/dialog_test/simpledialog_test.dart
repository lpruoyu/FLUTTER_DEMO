import 'package:flutter/material.dart';

class SimpleDialogTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("SimpleDialog Test"),
        ),
        body: _Body(),
      );
}

// ignore: must_be_immutable
class _Body extends StatelessWidget {
  BuildContext mContext;

  void _showSimpleDialog() async {
    var result = await showDialog(
        context: mContext,
        builder: (context) => SimpleDialog(
              children: <Widget>[
                SimpleDialogOption(
                  onPressed: () {
                    Navigator.pop(context, "Java");
                  },
                  child: Text("Java"),
                ),
                SimpleDialogOption(
                  onPressed: () {
                    Navigator.pop(context, "Dart");
                  },
                  child: Text("Dart"),
                ),
                SimpleDialogOption(
                  onPressed: () {
                    Navigator.pop(context, "C");
                  },
                  child: Text("C"),
                ),
                SimpleDialogOption(
                  onPressed: () {
                    Navigator.pop(context, "Kotlin");
                  },
                  child: Text("Kotlin"),
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
          onPressed: _showSimpleDialog,
          child: Text("show simple dialog"),
        ),
      ),
    );
  }
}
