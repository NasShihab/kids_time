import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kids_time/custom_height.dart';
import 'package:kids_time/home_page/category/alphabet/alphabet_widget.dart';

class Alphabet extends StatelessWidget {
  const Alphabet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFddf9c1),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                flex: 3,
                child: GreetingsPart(),
              ),
              width10(),
              const Expanded(
                flex: 2,
                child: AlphabetGridView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
