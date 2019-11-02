import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  BottomNavigationBarDemo({Key key}) : super(key: key);

  @override
  _BottomNavigationBarItemState createState() => _BottomNavigationBarItemState();
}

class _BottomNavigationBarItemState extends State<BottomNavigationBarDemo> {

  int _currentIndex = 0 ;

  void _onTapHandler (int index) {
    setState(() {
      this._currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onTapHandler,
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.black,
      items: [
        BottomNavigationBarItem(
          title: Text('Explore'),
          icon: Icon(Icons.explore),
        ),
        BottomNavigationBarItem(
          title: Text('History'),
          icon: Icon(Icons.history)
        ),
        BottomNavigationBarItem(
          title: Text('List'),
          icon: Icon(Icons.list)
        ),
        BottomNavigationBarItem(
          title: Text('Person'),
          icon: Icon(Icons.person)
        ),
      ],
    );
  }
}