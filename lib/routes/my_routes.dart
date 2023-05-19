import 'package:flutter/material.dart';
import 'package:kids_time/dashboard/category/reading/reading_page.dart';
import 'package:kids_time/on_boarding/splash_screen.dart';
import '../dashboard/category/base_page/base_page.dart';
import '../dashboard/dashboard.dart';

var myRoutes = <String, WidgetBuilder>{
  '/': (context) => const SplashScreen(),
  '/dashboard': (context) => const DashBoard(),
  '/base_page': (context) => const BasePage(),
  '/reading_page': (context) => const ReadingPage(),
};
