import 'package:flutter/material.dart';
import 'dashboard/category/base_page/base_page.dart';
import 'dashboard/dashboard.dart';

var myRoutes = <String, WidgetBuilder>{
  '/': (context) => const HomePage(),
  '/number_page': (context) => const BasePage(),
};
