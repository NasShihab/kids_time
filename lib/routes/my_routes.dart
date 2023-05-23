import 'package:flutter/material.dart';
import 'package:kids_time/dashboard/category/reading/reading_page.dart';
import 'package:kids_time/on_boarding/splash_screen.dart';
import '../dashboard/category/details_screen/details_screen.dart';
import '../dashboard/dashboard.dart';

var myRoutes = <String, WidgetBuilder>{
  '/': (context) => const SplashScreen(),
  '/dashboard': (context) => const DashBoard(),
  '/details_screen': (context) => const DetailsScreen(),
  '/reading_page': (context) => const ReadingPage(),
};
