import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterlearn/routes/routes_config.dart';

class NormalDrawerTest1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("UserAccunts Drawer"),
        ),
        body: Container(
          child: Center(
            child: Text("UserAccunts Drawer"),
          ),
        ),
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: UserAccountsDrawerHeader(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=753343692,4040595753&fm=26&gp=0.jpg")),
                      ),
                      currentAccountPicture: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1040704235,2413608441&fm=26&gp=0.jpg"),
                      ),
                      accountEmail: Text("iloveyou@shuchang.com"),
                      accountName: Text("舒畅"),
                    ),
                  )
                ],
              ),
              ListTile(
                title: Text("舒畅主页"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, RouteConfig.SHUCHANG_MAIN);
                },
              ),
              Divider()
            ],
          ),
        ),
      );
}
