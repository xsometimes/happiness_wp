

// 初始化应用的函数
import 'package:meow/utils/storage_manage.dart';

Future<void> initializeApp() async {
  // 初始化 StorageManager
  await StorageManager().init();
  // 设置应用已安装
  bool isInstalled = StorageManager.getAppIsInstalled();
  if (!isInstalled) {
    await StorageManager.setAppIsInstalled(true);
  }
}