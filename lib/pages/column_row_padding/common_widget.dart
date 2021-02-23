import 'package:flutter/material.dart';

class ContainerWithIcon extends StatelessWidget {
  final Color bgColor;
  final IconData icon;
  final double iconSize;
  final String info;

  ContainerWithIcon(this.info, this.icon,
      {this.bgColor = Colors.red, this.iconSize = 32});

  @override
  Widget build(BuildContext context) => Container(
      height: 180,
      width: 180,
      color: bgColor,
      child: Column(
        children: <Widget>[
          Icon(
            Icons.add,
            color: bgColor,
            size: iconSize,
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            info,
            style: TextStyle(color: Colors.white, fontSize: 24.0),
          )
        ],
      ));
}
