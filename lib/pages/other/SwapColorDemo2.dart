import 'package:flutter/material.dart';
import 'package:rains_flutter/pages/other/statefull_colorful_tile.dart';

class SwapColorDemo2 extends StatefulWidget {
  @override
  _SwapColorDemo1State createState() => _SwapColorDemo1State();
}

class _SwapColorDemo1State extends State<SwapColorDemo2> {

  List<Widget> widgets;

  @override
  void initState() {
    super.initState();
    widgets = [
      Padding(
        padding: EdgeInsets.all(10),
        child: StatefulColorfulTile(key: UniqueKey()),
      ),
      Padding(
        padding: EdgeInsets.all(10),
        child: StatefulColorfulTile(key: UniqueKey()),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("key测试"),
      ),
      body: Column(
        children: widgets,
      ),
      floatingActionButton: FloatingActionButton(
        child: IconButton(
          icon: Icon(Icons.add),
        ),
        onPressed: () {
          setState(() {
            widgets.insert(1, widgets.removeAt(0));
          });
        },
      ),
    );
  }
}
