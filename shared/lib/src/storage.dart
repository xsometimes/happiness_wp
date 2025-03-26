
import 'package:shared/constants/storage_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageManager {

  // Define a static private instance variable
  static final StorageManager _instance = StorageManager._internal();

  // Factory constructor to return the singleton instance
  // 工厂构造函数，返回单例实例
  factory StorageManager() {
    return _instance;
  }

  // Private constructor to ensure only the singleton instance can be accessed
  // 私有构造函数，确保只有单例实例可以访问
  StorageManager._internal() {
    init();
  }

  static late final SharedPreferences _prefs;

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // 用于判断app是否为首次安装
  static bool getAppIsInstalled() {
    return _prefs.getBool(StorageConstants.isInstalled)??false;
  }

  static Future<bool> setAppIsInstalled(bool value) async {
    return await _prefs.setBool(StorageConstants.isInstalled, value);
  }

  

  static clearAll () async {
    await _prefs.clear();
  }
}