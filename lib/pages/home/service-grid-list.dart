import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rains_flutter/pages/goods.dart';
import 'package:rains_flutter/pages/other/SwapColorDemo1.dart';
import 'package:rains_flutter/pages/other/SwapColorDemo2.dart';
import 'package:rains_flutter/pages/other/router-demo.dart';
import 'package:rains_flutter/utils/dio_util.dart';
import 'service_item.dart';

class ServiceGridList extends StatefulWidget {
  @override
  _ServiceGridListState createState() => _ServiceGridListState();
}

class _ServiceGridListState extends State<ServiceGridList> {
  List serviceList = [];

  @override
  void initState() {
    super.initState();

    this.getServiceList();
  }

  void getServiceList() async {
    try {
      var param = {"type": 0, "areaName": "樊城区"};
      Response response = await DioUtil.getInstance().get(
          "mall/api/ma/tenantcategory/tree",
          queryParameters: param);

      String dataStr = json.encode(response.data);
      Map<String, dynamic> dataMap = json.decode(dataStr);
      print(dataMap['data']);

      setState(() {
        serviceList = dataMap['data'];
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 5,
      physics: new NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(vertical: 0),
      children: serviceList.map((item) => InkWell(
        child: ServiceItem(data: ServiceItemViewModel(
            icon: Image.network(item['picUrl'], height: ScreenUtil().setHeight(50) , width: ScreenUtil().setWidth(30)),
            title: item['name']
        )),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SwapColorDemo2();
          }));
        },
      )).toList(),
    );
  }
}
