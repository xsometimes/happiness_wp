

import 'package:go_router/go_router.dart';
import 'package:meow/pages/dashboard/dashboard.dart';
import 'package:meow/pages/login/login_by_otp.dart';
import 'package:meow/pages/login/login_by_pwd.dart';
import 'package:meow/pages/splash/splash.dart';

final GoRouter meowRouter = GoRouter(
  initialLocation: '/dashboard',
  routes: [
    GoRoute(
      path: '/splash',
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      name: 'dashboard',
      path: '/dashboard',
      builder: (context, state) => Dashboard(),
    ),
    GoRoute(
      name: 'loginByOTP',
      path: '/loginByOTP', // One-Time-Password (OTP 动态口令)
      builder: (context, state) => LoginByOTP(),
    ),
    GoRoute(
      name: 'loginByPwd',
      path: '/loginByPwd', // One-Time-Password (OTP 动态口令)
      builder: (context, state) => LoginByPwd(),
    ),
    // GoRoute(
    //   path: '/meow',
    //   builder: (context, state) => const Text('Meow'),
    // ),
  ],
);
