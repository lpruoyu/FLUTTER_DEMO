import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("ToastTest"),
        ),
        body: _Body(),
      );
}

class _Body extends StatelessWidget  {
  void _showToast() async{
    var result = await Fluttertoast.showToast(
        msg: "toast", toastLength: Toast.LENGTH_SHORT, textColor: Colors.white);
    print(result);
  }

  @override
  Widget build(BuildContext context) => Container(
        child: Center(
          child: FlatButton(
            child: Text("showToast"),
            onPressed: _showToast,
          ),
        ),
      );
}
