import 'package:flutter/material.dart';
import 'package:meow/pages/dashboard/top_bar.dart';
import 'package:meow/widgets/meow_carousel/meow_carousel.dart';


class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Text('Dashboard'),
          // 搜索区
          TopBar(),
          // 广告轮播图
          SizedBox(
            height: 150,
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
          )
          // 功能列表
          // 热点话题
        ],
    ));
  }
}