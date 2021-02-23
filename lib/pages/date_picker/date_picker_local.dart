import 'package:flutter/material.dart';

class LocalPickerTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("LocalPicker Test"),
        ),
        body: _Body(),
      );
}

class _Body extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  void _showDatePicker() async {
    var result = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime(2200));
    setState(() {
      _currentDate = "${result.year}年${result.month}月${result.day}日";
    });
  }

  void _showTimePicker() async {
    var result =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
    setState(() {
      _currentTime = "${result.hour + 8}时${result.minute}分";
    });
  }

  String _currentDate;
  String _currentTime;

  @override
  void initState() {
    super.initState();
    var result = DateTime.now();
    _currentDate = "${result.year}年${result.month}月${result.day}日";
    _currentTime = "${result.hour + 8}时${result.minute}分";
  }

  @override
  Widget build(BuildContext context) => Container(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: _showDatePicker,
                child: Row(
                  children: <Widget>[
                    Text(_currentDate),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              InkWell(
                onTap: _showTimePicker,
                child: Row(
                  children: <Widget>[
                    Text(_currentTime),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
