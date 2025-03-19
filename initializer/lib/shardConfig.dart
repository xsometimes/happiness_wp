
class ShardConfig {
  // 静态私有成员变量，用于存储单例实例
  static final ShardConfig _instance = ShardConfig._internal();

  // 私有构造函数，防止外部实例化
  ShardConfig._internal();

  // 静态方法，用于获取单例实例
  static ShardConfig get instance => _instance;

  // 这里可以添加类的其他成员和方法
  init() {
    print('ShardConfig init');
  }
}