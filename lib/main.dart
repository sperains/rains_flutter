import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rains_flutter/pages/home/home.dart';
import 'package:rains_flutter/pages/login/login_page.dart';

import 'pages/goods.dart';
import 'pages/group-buy.dart';
import 'pages/home/home-page.dart';
import 'pages/in-time-buy.dart';
import 'pages/personal.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.amber,
        accentColor: Colors.orangeAccent,
      ),
      home: CustomBottomNavigationBar(),
    );
  }
}




class CustomBottomNavigationBar extends StatefulWidget {
  @override
  _CustomBottomNavigationBarState createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {

  int currentIndex = 0;
  List barItemOptions = [
    { "activeIcon": "assets/images/home_p.png", "title": "首页", "icon": "assets/images/home_n.png",},
    { "activeIcon": "assets/images/sort_sel.png", "title": "团购", "icon": "assets/images/sort.png",},
//    { "activeIcon": "assets/images/cate_p.png", "title": "即时达", "icon": "assets/images/cate_n.png",},
    { "activeIcon": "assets/images/cart_sel.png", "title": "优选", "icon": "assets/images/cart.png",},
    { "activeIcon": "assets/images/me_p.png", "title": "我的", "icon": "assets/images/me_n.png",}
  ];

  List<Widget> bodyList = [
    Home(),
//    GroupBuy(),
    LoginPage(),
    InTimeBuy(),
    Goods(),
    Personal()
  ];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334);

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.grey,
        items: barItemOptions.asMap().keys.map((key) => BottomNavigationBarItem(
            icon: Image.asset( key == currentIndex ? barItemOptions[key]['activeIcon'] : barItemOptions[key]['icon'], width: 24, height: 24,),
            title: Text(barItemOptions[key]['title'])
        )).toList(),
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            this.currentIndex = index;
          });
        },
      ),
      body: bodyList[currentIndex],
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
