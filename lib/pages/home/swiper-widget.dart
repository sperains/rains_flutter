import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:rains_flutter/utils/dio_util.dart';

import 'my-flutter-page-indicator.dart' as myswiper;

class SwiperWidget extends StatefulWidget {
  @override
  _SwiperWidgetState createState() => _SwiperWidgetState();
}

class _SwiperWidgetState extends State<SwiperWidget> {

  List _imageList = [];

  Future<void> getImageList() async {
    Response response =  await DioUtil.getInstance().get('mall/api/ma/notice', queryParameters: {
      "type": 1,
      "enable": 1,
      "areaName": "樊城区"
    });

    String dataStr = json.encode(response.data);
    Map<String, dynamic> dataMap = json.decode(dataStr);

    setState(() {
      _imageList = dataMap['data']['listNoticeItem'];

      print(_imageList);
    });
  }

  @override
  void initState() {
    super.initState();
    this.getImageList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ClipRRect(
        child: _imageList.length > 0 ? Swiper(
          itemBuilder: (context, index) {
            return InkWell(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child:  Image.network(_imageList[index]['url'], fit: BoxFit.cover),
              ),
              onTap: () {
                print(_imageList[index]);
              },
            );
          },
          itemCount: _imageList.length,
//          pagination: SwiperPagination(
//            builder: DotSwiperPaginationBuilder(
//              color: Colors.black54,
//              activeColor: Colors.white,
//            )
//          ),
          pagination: SwiperCustomPagination(builder: (BuildContext context, SwiperPluginConfig config) {
            return Container(
              alignment: Alignment.bottomCenter,
              child: myswiper.PageIndicator(
                layout: myswiper.PageIndicatorLayout.LINE,
                size: 15,
                space: 5,
                count: _imageList.length,
                controller: config.pageController,
              ),
            );
          }),
          control: SwiperControl(
              iconPrevious: null,
              iconNext: null
          ),
          autoplay: true,
          autoplayDelay: 10000,
        ): Container(),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

