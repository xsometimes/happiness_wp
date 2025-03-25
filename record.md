

# 目录
  - widgets/** 公共的ui组件
  - shared/** 工具类组件包， 如util、helper、enum、constants、exception、mixins等
  - data/** api_request，database、shared_preference等 该组件包所有的调用实现都在 domain 中接口 repository 的实现类 repository_impl 中
  - initializer/** 模块初始化组件包
  - domain/** 实体类（entity）组件包，还有一些接口类，如 repository、usercase等。






# 技术栈的选择
1. [go_router](https://pub-web.flutter-io.cn/documentation/go_rou%20ter/latest/topics/Get%20started-topic.html)
[go_router github](https://github.com/flutter/packages/tree/main/packages/go_router/example/lib)
flutter named route（命名路由）和navigator在处理deeplink（深层连接）有些问题，
  - 其行为始终相同且无法自定义
  - 对于使用命名路由的应用程序，Flutter 也不支持浏览器前进按钮

所以选择使用go_router，它可以解析路由路径并Navigator在应用程序收到新的深层链接时进行配置

2. melos
  - melos是一个命令行工具，用于管理多个Flutter项目的依赖关系和构建过程。
  - melos可以将多个Flutter项目组织成一个工作区，并提供了一些命令来管理这些项目，例如运行、测试、构建等。
3. [flutter_bloc](https://bloclibrary.dev/getting-started/)
  - 状态管理，ui和业务逻辑的分离


  732398
  
  - resources/** 资源文件，如图片、音频、视频、intl等
  - app/**


# 常用命令
melos bootstrap
`flutter pub global run melos bootstrap`








# 一些问答记录
1. command bootstrap 和scripts下的 有啥区别？
    - command.bootstrap：主要是配置 Melos 自带的 bootstrap 命令，用于初始化工作区里的包。
    - scripts：用来定义自定义脚本，这些脚本可以是任意的命令，方便开发者在项目中执行常用的操作。
简而言之，command.bootstrap 关注的是项目初始化，而 scripts 关注的是项目开发过程中的自定义操作。

2. 








dd

## 状态
[getx与bloc的区别]()
[Flutter — 为什么你需要状态管理工具？ 以 BLoC 为例](https://andyludeveloper.medium.com/flutter-%E7%82%BA%E4%BB%80%E9%BA%BC%E4%BD%A0%E9%9C%80%E8%A6%81%E7%8B%80%E6%85%8B%E7%AE%A1%E7%90%86%E5%B7%A5%E5%85%B7-%E4%BB%A5-bloc-%E7%82%BA%E4%BE%8B-43412763fdfb)




主题色：FFD43B
次等色：



车主信息：



输出一个新的app页面，app的顺风车主的信息详情页面，主题色为#FFD43B。需要展示
1. 车主信息：用户昵称、头像、性别、车龄、车牌号、评分（点击进去是乘客评价）、服务次数；
2. 服务订单、
2. 展示车辆基本信息 支持编辑修改，右上角 是添加爱车 按钮。
3. 宠物相关信息区，车里空间支持哪种类型的宠物，车主是否提供宠物用品等
其中 第3、4点参考 V9 车主填写表单信息




输出一个app的车主填写表单页面，主题色为#FFD43B。
需要填写的信息：
1. 驾驶年限，
2. 车辆信息，蓝色 车型 车牌等
3. 宠物信息，a. 可携带宠物类型，支持下拉筛选,
4. 备注：placeholder 宠物在车内的安置方式？是否有提供宠物航空箱、尿垫？




