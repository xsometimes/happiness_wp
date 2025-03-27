import 'package:flutter/material.dart';
import 'package:meow/resources/res_export.dart';

class MoewServices extends StatefulWidget {
  const MoewServices({super.key});

  @override
  State<MoewServices> createState() => _MoewServicesState();
}

class _MoewServicesState extends State<MoewServices> {
  // 模拟功能数据
  final List<Map<String, dynamic>> features = [
    {
      'icon': Icons.home,
      'title': '首页',
      'isDisabled': false,
    },
    {
      'icon': Icons.search,
      'title': '搜索',
      'isDisabled': false,
    },
    {
      'icon': Icons.person,
      'title': '个人中心',
      'isDisabled': false,
    },
    {
      'icon': Icons.settings,
      'title': '设置',
      'isDisabled': false,
    },
    {
      'icon': Icons.notifications,
      'title': '通知',
      'isDisabled': true, // 置灰项
    },
    {
      'icon': Icons.shopping_cart,
      'title': '购物车',
      'isDisabled': false,
    },
    {
      'icon': Icons.favorite,
      'title': '收藏',
      'isDisabled': false,
    },
    {
      'icon': Icons.history,
      'title': '历史记录',
      'isDisabled': false,
    },
    {
      'icon': Icons.help,
      'title': '帮助',
      'isDisabled': false,
    },
    {
      'icon': Icons.more_horiz,
      'title': '更多',
      'isDisabled': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      color: Colors.white, // 设置背景色为白色
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          childAspectRatio: 1.0,
        ),
        itemCount: features.length,
        itemBuilder: (context, index) {
          final feature = features[index];
          final isDisabled = feature['isDisabled'];

          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Gaps.v12,
              Image.network(
                'https://gips1.baidu.com/it/u=926030969,4240391978&fm=3028&app=3028&f=JPEG&fmt=auto&q=100&size=f576_1024',
                // colorFilter: colorFilter,
                colorBlendMode: isDisabled ? BlendMode.color : null,
                width: 32, // 可根据需要调整图片大小
                height: 32,
                color: isDisabled ? Colors.black : null,
              ),
              Gaps.v6,
              Text(
                feature['title'],
                style: MeowFontStyles.black12,
              ),
            ],
          );
        },
      ),
    );
  }
}