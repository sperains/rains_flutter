import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconBadge(Icons.public,),
          IconBadge(Icons.unfold_more,),
          IconBadge(Icons.airport_shuttle,),
        ],
      ),
    );
 }
}


class IconBadge extends StatelessWidget {

  final IconData icon;
  final double size;

  IconBadge (this.icon, {
    this.size = 32
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon, size: size, color: Colors.white,),
      width: size + 60,
      height: size + 60,
      color: Colors.lightGreen,
    );
  }
}