import 'package:flutter/material.dart';

class BottomDialogTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("BottomDialog Test"),
        ),
        body: _Body(),
      );
}

// ignore: must_be_immutable
class _Body extends StatelessWidget {
  BuildContext mContext;

  void _showBottomDialog() async {
    var result = await showModalBottomSheet(
        context: mContext,
        builder: (context) => Container(
              child: Column(
                children: <Widget>[
                  ListTile(
                    onTap: () {
                      Navigator.pop(context, "Java");
                    },
                    title: Text("Java"),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.pop(context, "English");
                    },
                    title: Text("English"),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.pop(context, "Me");
                    },
                    title: Text("Me"),
                  ),
                ],
              ),
            ));
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    mContext = context;
    return Container(
      child: Center(
        child: RaisedButton(
          onPressed: _showBottomDialog,
          child: Text("show bottom dialog"),
        ),
      ),
    );
  }
}
