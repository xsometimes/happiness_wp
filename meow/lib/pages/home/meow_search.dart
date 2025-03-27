import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MeowSearch extends StatefulWidget {
  const MeowSearch({
    super.key,
    this.hintText = '搜索'
  });

  final String? hintText; // Marked as final to fix the issue

  @override
  State<MeowSearch> createState() => _MeowSearchState();
}


class _MeowSearchState extends State<MeowSearch> {

  final TextEditingController _searchController = TextEditingController();

  void _handleSearch(String query) {
    // 处理搜索逻辑
    print('Searching for: $query');
  }

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).primaryColor;
    return SearchBar(
      controller: _searchController,
      // 设置阴影颜色为透明以去除阴影
      shadowColor: WidgetStateProperty.all(Colors.transparent),
      leading: Icon(Icons.search, size: 24.sp, color: primaryColor,),
      shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0)))),
      textInputAction: TextInputAction.search,
      hintText: '搜索',
      onSubmitted: _handleSearch,
      
    );
}
}