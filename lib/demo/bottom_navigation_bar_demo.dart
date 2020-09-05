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
          title: Text('首页'),
          icon: ImageIcon(
            AssetImage('assets/images/home_n.png'),
            size: 20,
          ),
        ),
        BottomNavigationBarItem(
          title: Text('团购'),
          icon: Icon(Icons.group_add)
        ),
        BottomNavigationBarItem(
          title: Text('及时达'),
          icon: Icon(Icons.list)
        ),
        BottomNavigationBarItem(
          title: Text('优选'),
          icon: Icon(Icons.person)
        ),
        BottomNavigationBarItem(
            title: Text('我的'),
            icon: Icon(Icons.person)
        ),
      ],
    );
  }
}