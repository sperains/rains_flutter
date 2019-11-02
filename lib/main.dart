import 'package:flutter/material.dart';
import 'demo/list_view_demo.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
      home: Home()
    );
  }
}


class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('Sperains'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'navagation',
          onPressed: () => debugPrint(' navigation is pressed'),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'search',
            onPressed: () => debugPrint(' search is pressed'),
          )
        ],
        elevation: 0,
      ),
      body: null
    );
  }
}

