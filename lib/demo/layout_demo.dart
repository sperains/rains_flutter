import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconBadge(
      Icons.pool
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