import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class TakePhotoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("TakePhoto Test"),
        ),
        body: TakePhoto(),
      );
}

class TakePhoto extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MState();
}

class _MState extends State<TakePhoto> {
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image;
    });
  }

  Future selectImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: getImage,
            child: Text("拍照"),
          ),
          RaisedButton(
            onPressed: selectImage,
            child: Text("选择图片"),
          ),
          Expanded(
            flex: 1,
            child: _image == null ? Text("请拍照") : Image.file(_image),
          )
        ],
      ),
    );
  }
}
