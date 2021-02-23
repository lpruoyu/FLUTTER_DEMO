import 'package:flutter/material.dart';

class ShuChangZhuYe extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData(primarySwatch: Colors.yellow),
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              "欢迎来到舒畅主页",
              style: TextStyle(color: Colors.brown),
            ),
          ),
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.network(
              "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2029468813,4112034136&fm=26&gp=0.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
}
