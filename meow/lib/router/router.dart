

import 'package:go_router/go_router.dart';
import 'package:meow/pages/dashboard/dashboard.dart';
import 'package:meow/pages/splash/splash.dart';

final GoRouter meowRouter = GoRouter(
  initialLocation: '/loginByOTP',
  routes: [
    GoRoute(
      path: '/splash',
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      name: 'dashboard',
      path: '/',
      builder: (context, state) => Dashboard(),
    ),
    GoRoute(
      name: 'loginByOTP',
      path: '/loginByOTP', // One-Time-Password (OTP 动态口令)
      builder: (context, state) => Dashboard(),
    ),
    // GoRoute(
    //   path: '/meow',
    //   builder: (context, state) => const Text('Meow'),
    // ),
  ],
);
