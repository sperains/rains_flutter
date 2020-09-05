import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            centerTitle: false,
            actions: [
              Container(
                width: 35,
                child: Center(
                  child: IconButton(
                    icon: Icon(
                      Icons.crop_free,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Container(
                width: 35,
                child: Center(
                  child: IconButton(
                    icon: Icon(
                      Icons.message,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
            elevation: 0,
            forceElevated: false,
            titleSpacing: 0,
            expandedHeight: 100,
            floating: false,
            pinned: true,
            snap: false,
            flexibleSpace: FlexibleSpaceBar(
              title: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.only(left: 5,right: 5),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    Expanded(child: Text('请输入商品名称')),
                    Icon(Icons.phone)
                  ],
                ),
              ),
              centerTitle: false,
              titlePadding: EdgeInsets.all(0),
              collapseMode: CollapseMode.parallax,
              background: Image.network(
                'https://m.360buyimg.com/mobilecms/s1125x939_jfs/t1/57927/10/5246/102061/5d2ef10bEf2debf2e/93d987f05fa960ea.jpg.dpg.webp',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 2000,
              child: Text('11111'),
              color: Colors.black54,
              alignment: Alignment.center,
            ),
          ),
        ],
      ),
    );
  }
}
