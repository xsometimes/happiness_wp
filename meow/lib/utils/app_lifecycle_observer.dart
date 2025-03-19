
import 'package:flutter/material.dart';

class AppLifecycleObserver extends WidgetsBindingObserver {
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        // 应用程序从后台恢复到前台
        print('App resumed');
        break;
      case AppLifecycleState.inactive:
        // 应用程序处于非活动状态，但仍可以接收用户输入
        print('App inactive');
        break;
      case AppLifecycleState.paused:
        // 应用程序被暂停，通常是因为用户切换到另一个应用程序
        print('App paused');
        break;
      case AppLifecycleState.detached:
        // 应用被销毁时执行的操作
        print('App detached');
        break;
      case AppLifecycleState.hidden:
        print('App hidden');
        break;
    }
  }
}