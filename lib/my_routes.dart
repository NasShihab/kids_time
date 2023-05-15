import 'package:flutter/material.dart';
import 'package:kids_time/home_page/category/alphabet/alphabet.dart';
import 'package:kids_time/home_page/home_page.dart';

var myRoutes = <String, WidgetBuilder>{
  '/': (context) => const HomePage(),
  '/alphabet': (context) => const Alphabet(),
};
