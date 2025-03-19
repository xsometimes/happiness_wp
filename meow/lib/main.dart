import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meow/resources/themes.dart';
import 'package:meow/router/router.dart';
import 'package:meow/utils/app_initialization.dart';
import 'package:meow/utils/app_lifecycle_observer.dart';

void main() async {
  // 确保 Flutter 框架初始化完成
  WidgetsFlutterBinding.ensureInitialized();
  // 调用初始化函数
  await initializeApp();

  final observer = AppLifecycleObserver();
  WidgetsBinding.instance.addObserver(observer);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 667),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return  MaterialApp.router(
          title: 'Lucky Meow',
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: ThemeMode.system,
          routerConfig: meowRouter,
          debugShowCheckedModeBanner: false,
          // theme: ThemeData(
            
          //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          //   useMaterial3: true,
          // ),
          // home: const MyHomePage(title: 'Flutter Demo Home Page'),
        );
      }
    );
  }
}
