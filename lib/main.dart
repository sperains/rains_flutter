import 'package:flutter/material.dart';

import 'model/post.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
      home: Home()
    );
  }
}


class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  Widget _listItemBuilder(BuildContext context, int index) {
    return Text(
      posts[index].title
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sperains'),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: _listItemBuilder,
      )
    );
  }
}