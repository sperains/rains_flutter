import 'package:flutter/material.dart';
import 'package:rains_flutter/demo/basic_demo.dart';
import 'package:rains_flutter/demo/bottom_navigation_bar_demo.dart';
import 'package:rains_flutter/demo/layout_demo.dart';
import 'package:rains_flutter/demo/list_view_demo.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //主题颜色
        primarySwatch: Colors.yellow, 
        // 水波纹特效颜色
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70
      ),
      home: Home()
    );
  }
}


class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('Sperains'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'search',
              onPressed: () => debugPrint(' search is pressed'),
            )
          ],
          elevation: 0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black45,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist),),
              Tab(icon: Icon(Icons.change_history),),
              Tab(icon: Icon(Icons.directions_bike),),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            // Icon(Icons.change_history, size: 128,),
            BasicDemo(),
            LayoutDemo()
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Sperains'),
                accountEmail: Text('chenai0122@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage('http://b-ssl.duitang.com/uploads/item/201603/26/20160326084943_CZjhV.thumb.700_0.jpeg'),
                ),
                decoration: BoxDecoration(
                  color: Colors.yellow[400],
                  image: DecorationImage(
                    image: NetworkImage('http://cdn.duitang.com/uploads/item/201511/15/20151115172353_e4wLV.thumb.700_0.jpeg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.yellow[400].withOpacity(0.6), 
                      BlendMode.hardLight
                    ),
                  )
                ),
              ),
              ListTile(
                title: Text('Messages', textAlign: TextAlign.right,),
                trailing: Icon(Icons.message, color: Colors.black12, size: 22,),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: Text('Favorite', textAlign: TextAlign.right,),
                trailing: Icon(Icons.favorite, color: Colors.black12, size: 22,),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: Text('Setting', textAlign: TextAlign.right,),
                trailing: Icon(Icons.settings, color: Colors.black12, size: 22,),
                onTap: () => Navigator.pop(context),
              ),

            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBarDemo()
      ),
    );
  }
}

