import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kids_time/dashboard/category/reading/reading_data.dart';

class ReadingPage extends StatelessWidget {
  const ReadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Reading Section'),
      ),
      body: SafeArea(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 15.w,
              mainAxisSpacing: 15.h,
              crossAxisCount: 3,
              childAspectRatio: 4 / 3),
          itemCount: dayNames.length,
          itemBuilder: (context, index) {
            return myContainer(
              text: dayNames[index],
            );
          },
        ),
      ),
    );
  }
}

Widget myContainer({required String text}) => Container(
      width: 200.w,
      height: 50.h,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.red,
            Colors.green,
          ],
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 5,
            offset: const Offset(2, 2),
          ),
        ],
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.yellow,
            fontSize: 25.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
