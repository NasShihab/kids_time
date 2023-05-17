import 'package:flutter/material.dart';
import 'package:kids_time/home_page/home_page.dart';

import 'home_page/category/base_page/base_page.dart';

var myRoutes = <String, WidgetBuilder>{
  '/': (context) => const HomePage(),
  '/number_page': (context) => const BasePage(),
};
