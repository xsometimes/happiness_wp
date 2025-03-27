import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meow/pages/home/meow_services.dart';
import 'package:meow/pages/home/top_bar.dart';
import 'package:widgets/widgets.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          // 搜索区
          Padding(
            padding: _partGaps,
            child: TopBar(),
          ),
          // 广告轮播图
          Container(
            height: 150.h,
            margin: _partGaps,
            child: MeowCarousel(
              items: [
                Container(
                  color: Colors.red,
                  child: const Center(child: Text('Card A')),
                ),
                Container(
                  color: Colors.green,
                  child: const Center(child: Text('Card B')),
                ),
                Container(
                  color: Colors.blue,
                  child: const Center(child: Text('Card C')),
                ),
              ],
            )
          ),
          // 功能列表
          Padding(padding: EdgeInsets.only(top: 16.h), child: MoewServices()),
          // 热点话题
        ],
    ));
  }

  EdgeInsets get _partGaps => EdgeInsets.only(left: 16.w, right: 16.w, top: 16.h);
}