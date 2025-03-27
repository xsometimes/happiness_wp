import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meow/pages/home/loc_dropdown.dart';
import 'package:meow/pages/home/meow_search.dart';

class TopBar extends StatefulWidget {
  const TopBar({super.key});

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  
  

  @override
  void initState() {
    super.initState();
  }

  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44.h,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          LocDropdown(),
          const SizedBox(width: 16),
          
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 6.0), 
              child: MeowSearch(
                hintText: '搜索',
              ),),
          ),
        ],
      ),
    );
  }
}