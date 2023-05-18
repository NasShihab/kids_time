import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Get.toNamed('/dashboard');
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 4,
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage('images/splash.jpg'),
              ),
            ),
            Expanded(
              flex: 1,
              child: Image(
                image: AssetImage('images/loading2.gif'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
