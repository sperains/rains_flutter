import 'package:flutter/material.dart';
import 'package:rains_flutter/pages/other/statefull_colorful_tile.dart';
import 'package:rains_flutter/pages/other/stateless_colorful_tile.dart';

class SwapColorDemo1 extends StatefulWidget {
  @override
  _SwapColorDemo1State createState() => _SwapColorDemo1State();
}

class _SwapColorDemo1State extends State<SwapColorDemo1> {

  List<Widget> widgets;

  @override
  void initState() {
    super.initState();
    widgets = [
      StatelessColorfulTile(),
      StatelessColorfulTile()
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
