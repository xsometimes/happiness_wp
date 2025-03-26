import 'package:flutter/material.dart';
import 'package:meow/pages/dashboard/loc_dropdown.dart';

class TopBar extends StatefulWidget {
  const TopBar({super.key});

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          LocDropdown(),
          const SizedBox(width: 16),
          // Expanded(
          //   child: TextField(
          //     controller: _searchController,
          //     decoration: const InputDecoration(
          //       hintText: '搜索',
          //       border: OutlineInputBorder(),
          //       prefixIcon: Icon(Icons.search),
          //     ),
          //     onChanged: (value) {
          //       // 处理搜索逻辑
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}