import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sperains'),
          elevation: 0,
        ),
        body: Container(
          alignment: Alignment(0, 0),
          child: Text('Hello flutter'),
        ),
      )
    );
  }
}