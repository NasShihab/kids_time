import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kids_time/my_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (_, child) => GetMaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: const Color(0xFF0b2d39),
          pageTransitionsTheme: const PageTransitionsTheme(
            builders: {
              // TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
              TargetPlatform.android: OpenUpwardsPageTransitionsBuilder(),
            },
          ),
          appBarTheme: AppBarTheme(
            centerTitle: true,
            color: Colors.deepOrange,
            titleTextStyle:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 25.sp),
          ),
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: myRoutes,
      ),
    );
  }
}
