import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NormalDrawerTest0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Normal Drawer"),
        ),
        body: Container(
          child: Center(
            child: Text("Normal Drawer"),
          ),
        ),
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: DrawerHeader(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: 60.0,
                            height: 60.0,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2029468813,4112034136&fm=26&gp=0.jpg"),
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=753343692,4040595753&fm=26&gp=0.jpg"),
                              fit: BoxFit.cover)),
                    ),
                  )
                ],
              ),
              Text(
                "舒畅",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Text("iloveyou@shuchang.com")
            ],
          ),
        ),
      );
}
