import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kids_time/custom_height.dart';
import 'package:kids_time/home_page/category/alphabet/alphabet_widget.dart';

class AlphabetPage extends StatelessWidget {
  const AlphabetPage({Key? key}) : super(key: key);

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
                child: LeftPan(),
              ),
              width10(),
              // const Expanded(flex: 2, child: AlphabetGridView()),
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
