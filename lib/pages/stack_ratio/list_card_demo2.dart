import 'package:flutter/material.dart';
import 'package:flutterlearn/resources/listdata.dart';

class ListDataInfoTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("ListDataInfo Text"),
        ),
        body: _Body(),
      );
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        color: Colors.white60,
        child: ListView(
          padding: EdgeInsets.all(8.0),
          children: listData
              .map((element) => Card(
                    margin: EdgeInsets.all(5.0),
                    child: Column(
                      children: <Widget>[
                        AspectRatio(
                          aspectRatio: 2,
                          child: Image.network(
                            element["imageUrl"],
                            fit: BoxFit.cover,
                          ),
                        ),
                        ListTile(
                          title: Text(
                            element["title"],
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            maxLines: 1,
                          ),
                          subtitle: Text(
                            element["description"],
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(element["imageUrl"]),
                          ),
                        ),
                      ],
                    ),
                  ))
              .toList(),
        ),
      );
}
