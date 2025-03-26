import 'package:flutter/material.dart';

class MeowCarousel extends StatefulWidget {
  final List<Widget> items; // 添加一个接收卡片列表的参数

  const MeowCarousel({
    super.key,
    required this.items, // 要求必须传入卡片列表
  });

  @override
  State<MeowCarousel> createState() => _MeowCarouselState();
}

class _MeowCarouselState extends State<MeowCarousel> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void _onDotClick(int index) {
    if (index == _currentPage) {
      return;
    }
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 160),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                children: widget.items, // 使用传入的卡片列表
              ),
            ),
          ],
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(widget.items.length, (index) {
              return GestureDetector(
                onTap: () {
                  _onDotClick(index);
                },
                child: Container(
                  width: 14.0,
                  height: 14.0,
                  margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentPage == index ? Colors.blue : Colors.grey,
                  ),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}