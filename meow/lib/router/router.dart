

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meow/pages/home/home.dart';
import 'package:meow/pages/login/login_by_otp.dart';
import 'package:meow/pages/login/login_by_pwd.dart';
import 'package:meow/pages/splash/splash.dart';
import 'package:meow/pages/dashboard/dashboard.dart';

final List<Widget> tabsPageList = [
  Home(),
  LoginByOTP(),
  LoginByPwd(),
];


final GoRouter meowRouter = GoRouter(
  initialLocation: '/',
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
      name: 'home',
      path: '/home',
      builder: (context, state) => tabsPageList[0],
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
