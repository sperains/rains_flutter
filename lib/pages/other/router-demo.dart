import 'package:flutter/material.dart';

class RouterDemo extends StatelessWidget {

  final String title;
  final String message;

  RouterDemo({this.title, this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('路由传参'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(title),
            Text(message)
          ],
        ),
      ),
    );
  }
}
