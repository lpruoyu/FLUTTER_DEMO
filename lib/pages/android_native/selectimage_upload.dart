import 'dart:convert';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class SelectPhotoUpload extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("SelectPhotoUpload Test"),
        ),
        body: TakePhoto(),
      );
}

class TakePhoto extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MState();
}

class _MState extends State<TakePhoto> {

  String urlBase = "http://jd.itying.com";

  String uploadUrl =  "http://jd.itying.com/imgupload";

  File _image;
  String image2;

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
            onPressed: selectImage,
            child: Text("选择图片"),
          ),
          Expanded(
            flex: 1,
            child: _image == null
                ? Text("还没有选择任何图片")
                : InkWell(
                    child: Image.file(_image),
                    onTap: () {
                      uploadImage();
                    },
                  ),
          ),
          Expanded(
            flex: 1,
            child: image2 == null
                ? Text("还没有上传任何图片")
                : InkWell(
                    child: Image.network(image2),
                  ),
          )
        ],
      ),
    );
  }

  void uploadImage() async {
    print(this._image.absolute.path);

    FormData formData = FormData.fromMap({
      "name": "wendux",
      "age": 25,
      "file": await MultipartFile.fromFile(this._image.absolute.path,
          filename: "xxx.jpg")
    });

    var response = await Dio().post(uploadUrl, data: formData);

    print(response);

    String hou = json.decode(response.toString())["path"];

    hou = hou.replaceAll(new RegExp("\\\\"), "/");

    String currentUrl = "$urlBase$hou";

    print(currentUrl);

    setState(() {
      image2 = currentUrl;
    });
  }
}
