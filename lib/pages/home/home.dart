import 'package:flutter/material.dart';
import 'package:rains_flutter/pages/home/service-grid-list.dart';

import 'swiper-widget.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
            onTap: () {
              showSearch(context: context, delegate: SearchBarDelegate());
            },
            child: Container(
              height: 30.0,
              width: 180,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              alignment: Alignment.center,
              child: Text('免费心理咨询', style: TextStyle(
                color: Colors.black54,
                fontSize: 13
              )),
            ),
        ),
        actions: [
          Container(
            child: InkWell(
              child: Icon(Icons.search),
              onTap: () {
                showSearch(context: context, delegate: SearchBarDelegate());
              },
            ),
            padding: EdgeInsets.all(10),
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(color: Color(0xf2f2f2)),
        height: double.infinity,
        child: Stack(
          children: [
            Container(
              child: Image.asset('assets/images/top_bg.png', fit: BoxFit.fitHeight),
            ),
            Positioned(
              child: Container(
                margin: EdgeInsets.fromLTRB(10, 80, 10, 10),
                child: Column(
                  children: [
                    Container(
                      child: SwiperWidget(),
                    ),
                    Container(
                      height: 160,
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ServiceGridList()
                    )
                  ],
                ),
              )
            ),
          ],
        ),
      )
    );
  }
}

const searchList = [
  'test-1',
  'test-2',
  'test-3',
  'test-4',
  'test-5'
];

const recentSuggest = [
  '推荐1',
  '推荐2'
];


class SearchBarDelegate extends SearchDelegate<String> {

  @override
  String get searchFieldLabel => '请输入关键字';

  @override
  TextStyle get searchFieldStyle => TextStyle(color: Colors.grey);


  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          }
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          if(query.isEmpty) {
            close(context, null);
          }else {
            query = "";
            showSuggestions(context);
          }
        }
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    throw Container(
      child: Card(
        color: Colors.blueAccent,
        child: Text(query),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentSuggest : searchList.where((input) => input.startsWith(query)).toList();

    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) => ListTile(
        title: RichText(
          text: TextSpan(
            text: suggestionList[index].substring(0, query.length),
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),
            children: [
              TextSpan(
                text: suggestionList[index].substring(query.length),
                style: TextStyle(color: Colors.grey)
              )
            ]
          ),
        ),
        onTap: () {
        },
      )
    );
  }

}