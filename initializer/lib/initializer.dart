import 'package:shared/shared.dart';

Future<void> initializeApp() async {
  // 初始化 StorageManager
  await StorageManager().init();
  // 设置应用已安装
  bool isInstalled = StorageManager.getAppIsInstalled();
  if (!isInstalled) {
    await StorageManager.setAppIsInstalled(true);
  }
}
